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
mfloat		:= soft
defines		:= USE_CMSIS_INIT
cdebug		:= g
cstd		:= c17
cxxstd		:= c++17

srcdirs		:= sources \
			   cmsis/samd21

incdirs		:= sources \
			   cmsis/core \
			   cmsis/samd21/include

ldscript	:= cmsis/samd21/samd21g18a_flash.ld

ldlibs		:= -lm

ldflags		:= -L

sources		:= $(notdir $(foreach dir,$(srcdirs),$(wildcard $(dir)/*.c)))

app			?= app
bindir		?= bin/
build		?= build/

elf			:= $(bindir)$(app).elf
map			:= $(bindir)$(app).map

outdirs		:= $(bindir) $(build)
