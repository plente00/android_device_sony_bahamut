#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from bahamut device
$(call inherit-product, device/sony/bahamut/device.mk)

PRODUCT_DEVICE := bahamut
PRODUCT_NAME := twrp_bahamut
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Bahamut
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bahamut-user 10 QKQ1.190915.002 1 dev-keys"

BUILD_FINGERPRINT := Sony/bahamut/bahamut:10/QKQ1.190915.002/1:user/dev-keys
