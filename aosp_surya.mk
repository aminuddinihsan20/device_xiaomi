#
# Copyright (C) 2020 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Nusantara stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# maintainer flag
ARCANA_MAINTAINER := Inuo20

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Blur
TARGET_USES_BLUR := true

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true


# Pixel Charging
USE_PIXEL_CHARGING := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# pixel build flag, if not define build type is vanilla
WITH_GAPPS := true

# only applicaple to pixel builds (WITH_GAPPS,) default is lawnchair for vanilla build
PREBUILT_LAWNCHAIR := true

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

PRODUCT_NAME := aosp_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SD1A.210817.036 7805805 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SD1A.210817.036/7805805:user/release-keys
