#
#  Makefile
#  appcm
#
#  Copyright (C) 2023 Jaider Angarita.
#  All rights reserved.
#
#  This file is part of the appcm project.
#

-include config.mk
-include makecm/common.mk

ifneq "$(MAKECMDGOALS)" "clean"
-include $(depends)
endif
