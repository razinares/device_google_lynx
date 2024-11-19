#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := lynx
DEVICE_PATH := device/google/lynx
VENDOR_PATH := vendor/google/lynx
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7a
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# RisingOS Flags
TARGET_HAS_UDFPS := true
RISING_MAINTAINER=RAZIN
WITH_GMS := true
TARGET_PREBUILT_GOOGLE_CAMERA := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_BCR := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lynx-user 15 AP3A.241105.007 12470370 release-keys" \
    BuildFingerprint=google/lynx/lynx:15/AP3A.241105.007/12470370:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME) \
    RisingMaintainer=RAZIN

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
