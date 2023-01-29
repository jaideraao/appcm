//
// main.c
// App
//
// Copyright (C) 2017 Jaider Angarita.
// All rights reserved.
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
