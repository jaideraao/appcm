//
// main.c
// appcm
//
// Copyright (C) 2023 Jaider Angarita.
// All rights reserved.
//
// This file is part of the appcm project.
//

#define USE_CMSIS_INIT

#include <stdlib.h>
#include <stdbool.h>
#include "samd21.h"

int main(void)
{
	__disable_irq();

	SystemInit();

	// REG_PORT_DIR0 = PORT_PA17;
	PORT->Group[0].DIRSET.bit.DIRSET = PORT_PA17;
	PORT->Group[0].PINCFG[17UL].bit.DRVSTR = 1;

	SysTick->CTRL = 0;
	SysTick->LOAD = 1000000UL;
	SysTick->VAL = 0;
	SysTick->CTRL = 0x00000007;

	NVIC_SetPriority(SysTick_IRQn, 3);
	NVIC_EnableIRQ(SysTick_IRQn);

	__enable_irq();

	/* Replace with your application code */

	while (true)
	{
		__NOP();
	}

	return EXIT_SUCCESS;
}

void SysTick_Handler(void)
{
	PORT->Group[0].OUTTGL.bit.OUTTGL = PORT_PA17;
}
