#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk) # vab加载到vendor boot里使用

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/xiaomi/pearl/device.mk)

PRODUCT_DEVICE := pearl
PRODUCT_NAME := twrp_pearl
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23054RA19C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pearl-user 12 SP1A.210812.016 V816.0.8.0.ULHCNXM release-keys"

BUILD_FINGERPRINT := Redmi/pearl/pearl:12/SP1A.210812.016/V816.0.8.0.ULHCNXM:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true
