#
# Copyright (C) 2020 OctaviOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Inherit some common OctaviOS stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dot_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Redmi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# OctaviOS maintaint
# Adds face unlock if package is available on ROM source.
TARGET_SUPPORT_FACE_UNLOCK := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=picasso \
    PRODUCT_NAME=picasso

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
