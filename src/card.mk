# card.mk: Makefile include for DK-DEV-AGI027RES card
# Copyright (C) 2021 CESNET z. s. p. o.
# Author(s): Vladislav Valek <vladislav.valek@email.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# Mandatory parameters (needs to be set in user Makefile)
###############################################################################

# Load correct paths to build system
include $(COMBO_BASE)/conf/ndk_paths.mk

# Optional parameters (can be changed in user Makefile)
###############################################################################

# Name for output files (rootname)
# This value is set as default in SYNTH_FLAGS(OUTPUT)
OUTPUT_NAME ?= cyclone-v-gx-startkit

USER_ENV ?=

# Private parameters (do not change these values in user Makefile)
###############################################################################

# Get directory of this Makefile.inc
CARD_BASE_LOCAL := $(dir $(lastword $(MAKEFILE_LIST)))
CARD_BASE ?= $(CARD_BASE_LOCAL)/..

NETCOPE_ENV = \
	OFM_PATH=$(OFM_PATH)\
	COMBO_BASE=$(COMBO_BASE)\
	FIRMWARE_BASE=$(FIRMWARE_BASE)\
	CARD_BASE=$(CARD_BASE) \
	APP_CONF=$(APP_CONF) \
	OUTPUT_NAME=$(OUTPUT_NAME) \
	$(USER_ENV)

include $(OFM_PATH)/build/Makefile.Quartus.inc
