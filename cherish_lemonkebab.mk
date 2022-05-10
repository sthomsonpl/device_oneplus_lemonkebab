#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from lemonkebab device
$(call inherit-product, device/oneplus/lemonkebab/device.mk)

# Inherit some common CHERISH stuff.
$(call inherit-product, vendor/cherish/config/common.mk)
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080



# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_lemonkebab
PRODUCT_DEVICE := lemonkebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2101

PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=sthomsonpl


PRODUCT_GMS_CLIENTID_BASE := android-oneplus
