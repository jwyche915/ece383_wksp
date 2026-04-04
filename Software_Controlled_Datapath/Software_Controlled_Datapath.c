x`/*--------------------------------------------------------------------
-- Name:	Maj Jeff Falkinburg
-- Date:	Feb 16, 2017
-- File:	lec18.c
-- Event:	Lecture 18
-- Crs:	ECE 383
--
-- Purp:	MicroBlaze Tutorial that implements a custom IP to microBlaze.
--
-- Documentation:	MicroBlaze Tutorial
--
-- Academic Integrity Statement: I certify that, while others may have
-- assisted me in brain storming, debugging and validating this program,
-- the program itself is my own work. I understand that submitting code
-- which is the work of other individuals is a violation of the honor
-- code.  I also understand that if I knowingly give my original work to
-- another individual is also a violation of the honor code.
--
-- Modified by: Jason Wyche
-- Date: 14 Mar 2026
-- Purpose: Used original code as a template for a software controller for
-- an oscilloscope datapath.
-------------------------------------------------------------------------*/

/******************************************************************************
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

/***************************** Include Files ********************************/

#include "xparameters.h"
#include "stdio.h"
#include "stdbool.h"
#include "xstatus.h"

#include "platform.h"
#include "xil_printf.h"						// Contains xil_printf
#include <xuartlite_l.h>					// Contains XUartLite_RecvByte
#include <xil_io.h>							// Contains Xil_Out8 and its variations
#include <xil_exception.h>

/************************** Constant Definitions ****************************/
// addresses for values read in from OScope BRAM
#define LBUS_OUT_REG			0x44a00014			// 4 LSBs of slv_reg5 are left output from Oscope audio codec
#define RBUS_OUT_REG			0x44a00018			// 4 LSBs of slv_reg6 are right output from Oscope audio codec
#define AUDIO_RDY_FLAG_REG		0x44a00024			// lsb of slv_reg9 is audio ready flag from OScope datapath
#define TRIG_VOLT_REG			0x44a0002C			// Bits 10 downto 0 are voltage trigger setting
#define TRIG_TIME_REG			0x44a00030			// Bits 10 downto 0 are time trigger setting

// addresses for values written to OScope BRAM
#define EX_WR_ADDR_REG			0x44a00000			// Bits 9 downto 0 are BRAM address to store audio sample
#define EX_WR_EN_REG			0x44a00004			// Bit 0 is the BRAM write enable bit
#define EX_LBUS_REG				0x44a0001C			// 2 LSBs of slv_reg7 are used to store external input to left BRAM
#define EX_RBUS_REG				0x44a00020			// 2 LSBs of slv_reg8 are used to store external input to right BRAM
#define CLR_AUDIO_RDY_FLAG_REG	0x44a00028			// lsb of slv_rev10 used to clear audio ready flag from OScope datapath

// OScope signal ready flag
#define FLAG_CLEAR		0x01
#define FLAG_RELEASE	0x00

// Number of OScope samples to collect and max number of columns for OScope grid display
#define AUDIO_SIG_ARRAY_SIZE	1024
#define GRID_X_MAX				620

#define printf xil_printf			/* A smaller footprint printf */

#define	uartRegAddr			0x40600000		// read <= RX, write => TX

/************************** Function Prototypes ****************************/
void fill_buff_ISR(void);

void fill_buff_polling(uint16_t *left_audio_buff, uint16_t *right_audio_buff);

bool is_triggered(uint16_t trigger_voltage, uint16_t trigger_time, uint16_t *audio_buff, int index);
int find_trigger_index(uint16_t trigger_voltage, uint16_t trigger_time, uint16_t *left_audio_buff);

void write_BRAM(uint16_t trigger_voltage, uint16_t trigger_time, uint16_t *left_audio_buff, uint16_t *right_audio_buff);

/************************** Variable Definitions **************************/
/*
 * The following are declared globally so they are zeroed and easily accessible
 * from a debugger
 */
u16 isrCount = 0;
bool audio_array_is_full = FALSE;

uint16_t audio_in_left[AUDIO_SIG_ARRAY_SIZE];
uint16_t audio_in_right[AUDIO_SIG_ARRAY_SIZE];

int main(void) {

	unsigned char c;

	uint16_t LBus_out;
	uint16_t RBus_out;

	uint16_t trigger_voltage;
	uint16_t trigger_time;

	init_platform();

	printf("\r\nWelcome to Software Controlled Datapath\n\r");
	printf("*****PRESS ? FOR TROUBLESHOOTING MENU*****\r\n");

    microblaze_register_handler((XInterruptHandler) fill_buff_ISR, (void *) 0);
    microblaze_enable_interrupts();

    while(1) {

    	c=XUartLite_RecvByte(uartRegAddr);

		switch(c) {

			/*-------------------------------------------------
			 * Reply with the help menu
			 *-------------------------------------------------
			 */
			case '?':
				printf("-----------------------------------\r\n");
				printf("	Troubleshooting Menu\r\n");
				printf("-----------------------------------\r\n");
				printf("?: help menu\r\n");
				printf("o: k\r\n");
				printf("r: READ REGISTER - view register values read into Microblaze\r\n");
				printf("d: DRAW LINES - horizontal (X=0) on channel 1 and diagonal (X = Y) on channel 2\r\n");
				printf("m: FILL BUFFER (POLL READY FLAG) - poll rx ready flag, read live samples, clear flag, fill buffer and print samples to UART\r\n");
				printf("t: TRIGGER LOCATE - find trigger point using buffer from option 'm'\r\n");
				printf("w: WRITE TO BRAM (NO TRIGGER) - write samples from option 'm' into datapath BRAM starting at address 0\r\n");
				printf("z: WRITE TO BRAM (TRIGGER) - write samples from option 'm' incorporating current trigger location. Aligns signal at intersection of voltage and time triggers\r\n");
				printf("g: CONTINUOUS MODE (POLLING) - combines options 'm', 't', and 'z'. continuously reads audio samples and updates Oscope\r\n");
				printf("c: CONTINUOUS MODE (ISR) - uses ISR to fill buffer then options 't' and 'z' to continuously read audio samples and update Oscope\r\n");
				printf("f: FLUSH terminal\r\n");
				break;

			/*-------------------------------------------------
			 * Basic I/O loopback
			 *-------------------------------------------------
			 */
    		case 'o':
    			printf("k \r\n");
    			break;

			/*------------------------------------------------------------
			 * case r: READ REGISTERS
			 * view register values read into Microblaze
			 * -----------------------------------------------------------*/
			case 'r':
				LBus_out = Xil_In16(LBUS_OUT_REG);
				RBus_out = Xil_In16(RBUS_OUT_REG);

				printf("\r\nCurrent slave register values read into Microblaze from OScope\r\n");
				printf("- Voltage Trigger (slv_reg11): %d\r\n",Xil_In32(TRIG_VOLT_REG));
				printf("- Time Trigger (slv_reg12): %d\r\n",Xil_In32(TRIG_TIME_REG));
				printf("- Audio Ready Flag (slv_reg9): x%x\r\n",Xil_In8(AUDIO_RDY_FLAG_REG));
				printf("- Audio Codec Left Output - prescale (LBus_out[15:0] : slv_reg5): %d\r\n",LBus_out);
				printf("- Audio Codec Left Output - scaled (LBus_out[15:7] : slv_reg5): %d\r\n",(LBus_out>>7));
				printf("- Audio Codec Right Output - prescale (RBus_out[15:0] : slv_reg6): %d\r\n",RBus_out);
				printf("- Audio Codec Right Output - scaled (RBus_out[15:7] : slv_reg6): %d\r\n",(RBus_out>>7));
				break;

			/*----------------------------------------------------
			 * case 'd': DRAW LINES
			 * draw a straight line on channel 1 and a diagonal line
			 * on channel 2 of the OScope output
			 *----------------------------------------------------*/
			case 'd':
				printf("\r\nDrawing a horizontal line on channel 1 and a diagonal line on channel 2\r\n");
				for (int i=0; i<1024; i++){
					   Xil_Out16(EX_WR_ADDR_REG,i);		//exWrADDR = i --> set BRAM address
					   Xil_Out16(EX_LBUS_REG,(256<<7));	//exLBus = 256 --> row for horizontal line on X axis of Oscope
														// shift value to upper 9 bits for value scaling in OScope
					   Xil_Out16(EX_RBUS_REG,((i+36)<<7));	//exRBus = i --> diagonal line w/ X = Y
														// shift value to upper 9 bits for value scaling in OScope
					   Xil_Out8(EX_WR_EN_REG,1);			// exWen = 1 --> write data to address in BRAM
					   Xil_Out8(EX_WR_EN_REG,0);			// exWen = 0 --> stop writing to BRAM
				}
				printf("Done writing values for lines to BRAM\r\n");
				break;

			/*---------------------------------------------------------
			 * case 'm': FILL BUFFER (POLL READY FLAG)
			 * test rx ready flag, read live samples, clear flag, fill
			 * buffer, and print buffer to UART
			 * -------------------------------------------------------*/
			case 'm':
				microblaze_disable_interrupts();

				printf("\r\nPolling ready flag and storing live samples\r\n");
				for (int i=0; i < AUDIO_SIG_ARRAY_SIZE; i++){
					while (!Xil_In8(AUDIO_RDY_FLAG_REG));
					audio_in_left[i] = Xil_In16(LBUS_OUT_REG);
					audio_in_right[i] = Xil_In16(RBUS_OUT_REG);
					Xil_Out8(CLR_AUDIO_RDY_FLAG_REG, FLAG_CLEAR);
					Xil_Out8(CLR_AUDIO_RDY_FLAG_REG, FLAG_RELEASE);
				}
				printf("Done polling and storing samples\r\n");

				printf("Printing stored samples\r\n");
				for (int i=0; i < AUDIO_SIG_ARRAY_SIZE; i++){
					if (i%50 == 0){
						printf("audio_in_left[%d] = %d\r\n",i,(audio_in_left[i]>>7));
						printf("audio_in_right[%d] = %d\r\n",i,audio_in_right[i]);
					}
					if (i == 1023){
						printf("audio_in[left%d] = %d\r\n",i,(audio_in_left[i]>>7));
					}
				}
				printf("Done printing samples\r\n");

				microblaze_enable_interrupts();

				break;

			/*--------------------------------------------------------
			 * case ‘t’: TRIGGER LOCATE
			 * Given trig_volt, trig_time, and Array_L, search through
			 * Array_L to find the trigger point, and print this location
			 * to the terminal
			 * NOTE: must call option 'm' to fill Array_L before calling option 'w'
			 * ------------------------------------------------------*/
			case 't':
				trigger_voltage = Xil_In16(TRIG_VOLT_REG);
				trigger_time = Xil_In16(TRIG_TIME_REG);

				printf("\r\nSearching for voltage trigger point\r\n");
				printf("Voltage Trigger Point = %d\r\n",trigger_voltage);
				printf("Time Trigger Point = %d\r\n",trigger_time);
				for (int i=1; i < AUDIO_SIG_ARRAY_SIZE; i++){
					if (is_triggered(trigger_voltage, trigger_time, audio_in_left, i)){
						printf("Found voltage trigger point\r\n");
						printf("audio_in_left[%d] = %d\r\n", (i-1), (audio_in_left[i-1]>>7));
						printf("audio_in_left[%d] = %d\r\n", i, (audio_in_left[i]>>7));
						break;
					}
					else if (i == (AUDIO_SIG_ARRAY_SIZE-1)){
						printf("Voltage trigger point not found\r\n");
					}
				}

				break;

			/*--------------------------------------------------------
			 * case 'w': WRITE TO BRAM (NO TRIGGER)
			 * write samples from option 'm' into datapath BRAM starting
			 * at address 0
			 * NOTE: must call option 'm' to fill audio_in array before
			 * calling option 'w'
			 * ------------------------------------------------------*/
			case 'w':
				printf("\r\nWriting to BRAM\r\n");
				for (int i=0; i < AUDIO_SIG_ARRAY_SIZE; i++){
				   Xil_Out16(EX_WR_ADDR_REG,i);					//exWrADDR = i --> set BRAM address
				   Xil_Out16(EX_LBUS_REG,audio_in_left[i]);
				   Xil_Out16(EX_RBUS_REG,audio_in_right[i]);
				   Xil_Out8(EX_WR_EN_REG,1);			// exWen = 1 --> write data to address in BRAM
				   Xil_Out8(EX_WR_EN_REG,0);			// exWen = 0 --> stop writing to BRAM
				}
				printf("Done writing to BRAM\r\n");
				break;


			/*-----------------------------------------------------
			 * case ‘z’: WRITE TO BRAM (TRIGGER)
			 * use current trigger location to write samples from
			 * option 'm' into datapath BRAM at appropriate BRAM
			 * addresses so the signal appears triggered on Oscope screen
			 * ---------------------------------------------------*/
			case 'z':
				trigger_voltage = Xil_In16(TRIG_VOLT_REG);
				trigger_time = Xil_In16(TRIG_TIME_REG);

				printf("\r\nWriting to BRAM starting at trigger time\r\n");

				write_BRAM(trigger_voltage, trigger_time, audio_in_left, audio_in_right);

				printf("Done writing to BRAM\r\n");
				break;

			/*--------------------------------------------------
			 * case 'g': CONTINUOUS MODE (POLLING)
			 * -------------------------------------------------
			 */
			case 'g':
				printf("\r\nIn CONTINUOUS MODE (POLLING)\r\n");

				while (1){
					trigger_voltage = Xil_In16(TRIG_VOLT_REG);
					trigger_time = Xil_In16(TRIG_TIME_REG);

					fill_buff_polling(audio_in_left, audio_in_right);
					write_BRAM(trigger_voltage, trigger_time, audio_in_left, audio_in_right);
				}
				break;

			/*---------------------------------------------------------
			 * case 'c': CONTINUOUS MODE (ISR)
			 * -------------------------------------------------------*/
			case 'c':
				printf("\r\nIn CONTINUOUS MODE (ISR)\r\n");

				while (1){
					trigger_voltage = Xil_In16(TRIG_VOLT_REG);
					trigger_time = Xil_In16(TRIG_TIME_REG);

					if (audio_array_is_full){
						write_BRAM(trigger_voltage, trigger_time, audio_in_left, audio_in_right);

						isrCount = 0;		//reset isrCount so we can store the next batch of 1024 samples
					}
				}

				break;

			/*-------------------------------------------------
			 * Clear the terminal window
			 *-------------------------------------------------
			 */
            case 'f':
            	for (c=0; c<40; c++) printf("\r\n");
               	break;

			/*-------------------------------------------------
			 * Unknown character was input
			 *-------------------------------------------------
			 */
    		default:
    			printf("unrecognized character: %c\r\n",c);
    			break;
    	} // end case

    } // end while 1

    cleanup_platform();

    return 0;
} // end main


/*****************Function definitions*******************************/
void fill_buff_ISR(void) {
	audio_array_is_full = (isrCount == 1024) ? TRUE : FALSE;

	if (audio_array_is_full)
		return;
	else{
		audio_in_left[isrCount] = Xil_In16(LBUS_OUT_REG);
		audio_in_right[isrCount] = Xil_In16(RBUS_OUT_REG);
		Xil_Out8(CLR_AUDIO_RDY_FLAG_REG, FLAG_CLEAR);
		Xil_Out8(CLR_AUDIO_RDY_FLAG_REG, FLAG_RELEASE);

		isrCount = isrCount + 1;
	}
}

void fill_buff_polling(uint16_t *left_audio_buff, uint16_t *right_audio_buff){
	microblaze_disable_interrupts();

	for (int i=0; i < AUDIO_SIG_ARRAY_SIZE; i++){
		while (!Xil_In8(AUDIO_RDY_FLAG_REG));
		left_audio_buff[i] = Xil_In16(LBUS_OUT_REG);
		right_audio_buff[i] = Xil_In16(RBUS_OUT_REG);
		Xil_Out8(CLR_AUDIO_RDY_FLAG_REG, FLAG_CLEAR);
		Xil_Out8(CLR_AUDIO_RDY_FLAG_REG, FLAG_RELEASE);
	}

	microblaze_enable_interrupts();
}

bool is_triggered(uint16_t trigger_voltage, uint16_t trigger_time, uint16_t *audio_buff, int index){
	return (((audio_buff[index-1]>>7) > (trigger_voltage + 36)) && ((audio_buff[index]>>7) <= (trigger_voltage + 36)) && (index > trigger_time));
}

int find_trigger_index(uint16_t trigger_voltage, uint16_t trigger_time, uint16_t *left_audio_buff){
	int index = 0;
	for (int i=1; i < AUDIO_SIG_ARRAY_SIZE; i++){
		if ( is_triggered(trigger_voltage, trigger_time, left_audio_buff, i) ){
		  index = i;
		  break;
		}
	}

	return index;
}

void write_BRAM(uint16_t trigger_voltage, uint16_t trigger_time, uint16_t *left_audio_buff, uint16_t *right_audio_buff){
	int write_index = find_trigger_index(trigger_voltage, trigger_time, left_audio_buff) - trigger_time;

	for (int j = 0; j < (GRID_X_MAX + 1); j++){
	   Xil_Out16(EX_WR_ADDR_REG,j);					//exWrADDR = i --> set BRAM address
	   Xil_Out16(EX_LBUS_REG,left_audio_buff[write_index]);
	   Xil_Out16(EX_RBUS_REG,right_audio_buff[write_index]);
	   Xil_Out8(EX_WR_EN_REG,1);			// exWen = 1 --> write data to address in BRAM
	   Xil_Out8(EX_WR_EN_REG,0);			// exWen = 0 --> stop writing to BRAM

	   write_index++;
	}
}
