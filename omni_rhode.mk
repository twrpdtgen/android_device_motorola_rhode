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

# Inherit from rhode device
$(call inherit-product, device/motorola/rhode/device.mk)

PRODUCT_DEVICE := rhode
PRODUCT_NAME := omni_rhode
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_rhode-eng 99.87.36 SP2A.220405.004 eng.runner.20230113.040649 test-keys"

BUILD_FINGERPRINT := motorola/twrp_rhode/rhode:99.87.36/SP2A.220405.004/runner01130352:eng/test-keys
