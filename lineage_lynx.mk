#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/lynx/aosp_lynx.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, device/google/lynx/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7a
PRODUCT_NAME := lineage_lynx

# Maintainer name for Everest
EVEREST_MAINTAINER := "RAZIN"

# For UDFPS devices
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Build GAPPS\Vanilla
WITH_GAPPS := true

# Quick switch (add more than one Launcher in build)
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_7 := true

# Pixel Launcher Recent Blur
TARGET_USES_BLUR_RECENT := false

# Blur Support 
TARGET_SUPPORTS_BLUR := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=lynx \
    PRIVATE_BUILD_DESC="lynx-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/lynx/lynx:14/AP2A.240905.003/12231197:user/release-keys

$(call inherit-product, vendor/google/lynx/lynx-vendor.mk)
