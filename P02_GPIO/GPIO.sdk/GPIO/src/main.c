/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
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

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "xgpiops.h"
#include "sleep.h"

#define GPIO_DEVICE_ID  	XPAR_XGPIOPS_0_DEVICE_ID

#define S1         47
#define S2         51
#define LED_R      37
#define LED_G      38
#define LED        15

static XGpioPs Gpio;	/* The driver instance for GPIO Device. */


int GPIO_Init(void);
void GPIO_TEST(void);


int main()
{
	int Status;
    init_platform();

    print("This is MIO_LED test\n\r");

    Status = GPIO_Init();
    if(Status == XST_FAILURE)
    	print("GPIO is not good\n\r");

    GPIO_TEST();

    cleanup_platform();
    return 0;
}



int GPIO_Init(void)
{
	int Status;
	XGpioPs_Config *ConfigPtr;

	/* Initialize the GPIO driver. */
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the direction for the pin to be output and
	 * Enable the Output enable for the LED Pin.
	 */
	XGpioPs_SetDirectionPin(&Gpio, LED, 1);
	XGpioPs_SetDirectionPin(&Gpio, LED_R, 1);
	XGpioPs_SetDirectionPin(&Gpio, LED_G, 1);


	XGpioPs_SetOutputEnablePin(&Gpio, LED, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, LED_R, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, LED_G, 1);

	/* Set the GPIO output to be low. */
	XGpioPs_WritePin(&Gpio, LED, 0x0);
	XGpioPs_WritePin(&Gpio, LED_R, 0x0);
	XGpioPs_WritePin(&Gpio, LED_G, 0x0);



	/* Set the direction for the specified pin to be input. */
	XGpioPs_SetDirectionPin(&Gpio, S1, 0x0);
	XGpioPs_SetDirectionPin(&Gpio, S2, 0x0);

	return XST_SUCCESS;
}




void GPIO_TEST(void)
{

	while(1)
	{
		if(XGpioPs_ReadPin(&Gpio, S1) == 0)
		{
			print("The key S1 is pull down\n\r");
			XGpioPs_WritePin(&Gpio, LED_R, 0x1);
			XGpioPs_WritePin(&Gpio, LED, 0x1);
			usleep(1000000);
		}

		if(XGpioPs_ReadPin(&Gpio, S2) == 0)
		{
			print("The key S2 is pull down\n\r");
			XGpioPs_WritePin(&Gpio, LED_G, 0x1);
			XGpioPs_WritePin(&Gpio, LED, 0x1);
			usleep(1000000);
		}

		XGpioPs_WritePin(&Gpio, LED, 0x0);
		XGpioPs_WritePin(&Gpio, LED_R, 0x0);
		XGpioPs_WritePin(&Gpio, LED_G, 0x0);
	}
}


