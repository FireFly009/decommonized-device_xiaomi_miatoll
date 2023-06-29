#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080
USE_LEGACY_BOOTANIMATION := true
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

PRODUCT_NAME := derp_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

# DerpFest
DERP_BUILDTYPE := Official

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="curtana_global-user 12 RKQ1.211019.001 V14.0.4.0.SJWMIXM release-keys"

BUILD_FINGERPRINT := Redmi/curtana_global/curtana:12/RKQ1.211019.001/V14.0.4.0.SJWMIXM:user/release-keys