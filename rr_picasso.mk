#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)
# ANXCamera
$(call inherit-product, vendor/ANXCamera/config.mk)
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Redmi

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201005.004/6782484:user/release-keys"
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=picasso \
    PRODUCT_NAME=picasso \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201005.004 6782484 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
#FaceUnlock

TARGET_FACE_UNLOCK_SUPPORTED := true
