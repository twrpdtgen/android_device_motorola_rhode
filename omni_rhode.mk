#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rhode device
$(call inherit-product, device/motorola/rhode/device.mk)

PRODUCT_DEVICE := rhode
PRODUCT_NAME := omni_rhode
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(100)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rhode_g-user 11 S1SR32.38-14-2 b5f55 release-keys"

BUILD_FINGERPRINT := motorola/rhode_g/rhode:11/S1SR32.38-14-2/b5f55:user/release-keys
