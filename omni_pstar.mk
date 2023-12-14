#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pstar device
$(call inherit-product, device/motorola/pstar/device.mk)

PRODUCT_DEVICE := pstar
PRODUCT_NAME := omni_pstar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20 pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pstar_retail-user 12 S1RAS32.41-20-16-11 2d77a8-3df6d release-keys"

BUILD_FINGERPRINT := motorola/pstar_retail/pstar:12/S1RAS32.41-20-16-11/2d77a8-3df6d:user/release-keys
