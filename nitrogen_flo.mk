# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
$(call inherit-product, vendor/nitrogen/products/common.mk)
# Inherit some common Lineage stuff.
#$(call inherit-product, vendor/aosp/config/common_mini_tablet_wifionly.mk)
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/flo/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := nitrogen_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7 (2013) Wifi
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    BUILD_FINGERPRINT=google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys \
    PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="HC (Zips)"

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
-include vendor/aosp/configs/bootanimation.mk

