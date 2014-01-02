#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2012 The LiquidSmooth Project
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

# device
$(call inherit-product, device/motorola/wingray/device.mk)

# tablet
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

PRODUCT_NAME := liquid_wingray
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom Wifi
PRODUCT_MANUFACTURER := MOTOROLA
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.wingray.$(shell date +%m%d%y).$(shell date +%H%M%S)

# Kernel inline build
TARGET_KERNEL_CONFIG := stingray_defconfig
TARGET_VARIANT_CONFIG := stingray_defconfig

$(call inherit-product-if-exists, vendor/motorola/wingray/wingray-vendor.mk)
