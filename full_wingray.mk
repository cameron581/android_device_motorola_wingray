#
# Copyright 2013 The Android Open Source Project
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

# Set wifi-only before it's set by generic_no_telephony.mk
PRODUCT_PROPERTY_OVERRIDES += \
        ro.carrier=wifi-only

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_NAME := full_wingray
PRODUCT_DEVICE := wingray
PRODUCT_BRAND := Android
PRODUCT_MODEL := Xoom Wifi

PRODUCT_MANUFACTURER := MOTOROLA
PRODUCT_RESTRICT_VENDOR_FILES := true

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/motorola/wingray/device.mk)
$(call inherit-product-if-exists, vendor/motorola/wingray/wingray-vendor.mk)
