#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

$(call inherit-product, device/Xiaomi/arctic/device.mk)

PRODUCT_DEVICE := arctic
PRODUCT_NAME := twrp_arctic
PRODUCT_BRAND := Android
PRODUCT_MODEL := mainline
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := arctic

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miodm_arctic_global-user 13 TP1A.220624.014 OS3.0.12.0.WBVMIXM test-keys"
BUILD_FINGERPRINT := Xiaomi/missi/missi:16/BP2A.250605.031.A3/OS3.0.12.0.WBVMIXM:user/release-keys
