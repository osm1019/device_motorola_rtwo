#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_DISABLE_EPPE := true

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Evolution Xtras
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
#BCR
BUILD_BCR := true


PRODUCT_NAME := lineage_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rtwo_g \
    PRIVATE_BUILD_DESC="rtwo_g-user 14 U1TRS34.8-30-13-2-2-3 2a8f5b-817f7f release-keys"

BUILD_FINGERPRINT := motorola/rtwo_g/rtwo:14/U1TRS34.8-30-13-2-2-3/2a8f5b-817f7f:user/release-keys
