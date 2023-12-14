#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
#
# Release name
PRODUCT_RELEASE_NAME := pstar

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from pstar device
$(call inherit-product, device/motorola/pstar/device.mk)

PRODUCT_DEVICE := pstar
PRODUCT_NAME := twrp_pstar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20 pro
PRODUCT_MANUFACTURER := motorola
#PRODUCT_RELEASE_NAME := motorola edge 20 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pstar_retail-user 12 S1RAS32.41-20-16-11 2d77a8-3df6d release-keys"

BUILD_FINGERPRINT := motorola/pstar_retail/pstar:12/S1RAS32.41-20-16-11/2d77a8-3df6d:user/release-keys
