#
# Copyright (C) 2020 AICP
#
# SPDX-License-Identifier: Apache-2.0
#

# ANXCamera
$(call inherit-product, vendor/aeonax/ANXCamera/anx-vendor.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Redmi

# PixelGApps
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="masemoel"

# Adds face unlock if package is available on ROM source.
TARGET_SUPPORT_FACE_UNLOCK := true

# Build info
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=picasso \
    PRODUCT_NAME=picasso \
    PRIVATE_BUILD_DISC="redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi