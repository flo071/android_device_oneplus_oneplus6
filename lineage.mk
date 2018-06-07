# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
-include vendor/lineage/build/core/config.mk
-include vendor/lineage/build/core/apicheck.mk

# Inhert some treble stuff
$(call inherit-product, device/oneplus/oneplus6/base-pre.mk)
include build/make/target/product/treble_common.mk
$(call inherit-product, vendor/vndk/vndk.mk)

$(call inherit-product, device/oneplus/oneplus6/base.mk)

PRODUCT_NAME := lineage_oneplus6
PRODUCT_DEVICE := oneplus6
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 6

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR := oneplus
