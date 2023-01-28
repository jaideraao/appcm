#
#  config.mk
#  App
#
#  Copyright (C) 2017 Jaider Angarita.
#  All rights reserved.
#

target		:= __SAMD21G18A__
mcpu		:= cortex-m0plus
cdebug		:= g
cstd		:= c17
cxxstd		:= c++17

srcdir		:= src \
			device

incdirs		:= src \
			device/cmsis \
			device/include

ldscript	:= device/samd21g18a_flash.ld

ldlibs		:= -lm

ldflags		:= -L

# sources		:= $(notdir $(wildcard $(srcdir)/*.c))
sources		:= main.c \
			startup_samd21g18a.c \
			system_samd21g18a.c
