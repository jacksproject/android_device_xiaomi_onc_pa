#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from onc device
$(call inherit-product, device/xiaomi/onc/device.mk)

# Inherit some common AOSPA stuff.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := onc
PRODUCT_NAME := aospa_onc
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Y3
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

# AOSPA Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOARD_PLATFORM := MSM8953
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onc-user 9 PKQ1.181021.001 V11.0.3.0.PFLMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/onc/onc:9/PKQ1.181021.001/V11.0.3.0.PFLMIXM:user/release-keys"
