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

# Inherit from a03 device
$(call inherit-product, device/samsung/a03/device.mk)

PRODUCT_DEVICE := a03
PRODUCT_NAME := omni_a03
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A035F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a03nnxx-user 11 RP1A.200720.012 A035FXXU2BVI8 release-keys"

BUILD_FINGERPRINT := samsung/a03nnxx/a03:11/RP1A.200720.012/A035FXXU2BVI8:user/release-keys
