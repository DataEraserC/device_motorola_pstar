#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_pstar.mk

COMMON_LUNCH_CHOICES := \
    twrp_pstar-user \
    twrp_pstar-userdebug \
    twrp_pstar-eng
