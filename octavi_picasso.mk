#
# Copyright (C) 2020 OctaviOS
#
# SPDX-License-Identifier: Apache-2.0
#

# ANXCamera
$(call inherit-product-if-exists, vendor/aeonax/ANXCamera/anx-vendor.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Inherit some common OctaviOS stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Redmi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# OctaviOS maintainter
OCTAVI_DEVICE_MAINTAINER := masemoel

# Adds face unlock if package is available on ROM source.
TARGET_SUPPORT_FACE_UNLOCK := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=picasso \
    PRODUCT_NAME=picasso

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
