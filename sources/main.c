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
#include "sam.h"

int main(void)
{
	SystemInit();

	/* Replace with your application code */
	while (true)
	{
		__asm("nop");
	}

	return EXIT_SUCCESS;
}
