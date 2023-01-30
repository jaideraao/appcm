#
#  config.mk
#  appcm
#
#  Copyright (C) 2017 Jaider Angarita.
#  All rights reserved.
#
#  This file is part of the appcm project.
#

target		:= __SAMD21G18A__
mcpu		:= cortex-m0plus
cdebug		:= g
cstd		:= c17
cxxstd		:= c++17

srcdir		:= sources \
			samd21a

incdirs		:= sources \
			cmsis/core \
			samd21a/include

ldscript	:= samd21a/samd21g18a_flash.ld

ldlibs		:= -lm

ldflags		:= -L

# sources		:= $(notdir $(wildcard $(srcdir)/*.c))
sources		:= main.c \
			startup_samd21g18a.c \
			system_samd21g18a.c
