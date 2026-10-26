#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from guamp device
$(call inherit-product, device/motorola/guamp/device.mk)

PRODUCT_DEVICE := guamp
PRODUCT_NAME := twrp_guamp
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9) play
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="guamp_retail-user 11 RPXS31.Q2-58-17-7-3 ad9c24 release-keys"

BUILD_FINGERPRINT := motorola/guamp_retail/guamp:11/RPXS31.Q2-58-17-7-3/ad9c24:user/release-keys
