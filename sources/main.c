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

#include <stdbool.h>
#include <stdlib.h>
#include "sam.h"

int main(void)
{
    __disable_irq();

    SystemInit();

    PORT_REGS->GROUP[0].PORT_DIRSET = PORT_PA17;

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
    PORT_REGS->GROUP[0].PORT_OUTTGL = PORT_PA17;
}
