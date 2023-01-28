#
#  Makefile
#  App
#
#  Copyright (C) 2017 Jaider Angarita.
#  All rights reserved.
#

-include config.mk
-include make/common.mk

ifneq "$(MAKECMDGOALS)" "clean"
-include $(depends)
endif
