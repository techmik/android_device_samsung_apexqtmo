#
# Copyright (C) 2011 The CyanogenMod Project
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

## blobs
$(call inherit-product-if-exists, vendor/samsung/apexqtmo/apexqtmo-vendor.mk)
# Inherit from d2-common
$(call inherit-product, device/samsung/d2-common/d2-common.mk) 
## common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/d2-common/overlay-gsm
## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/apexqtmo/overlay
# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x 

# Hardware keyboard
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/keyboard/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl \
    device/samsung/apexqtmo/keyboard/sec_keypad.kcm:system/usr/keychars/sec_keypad.kcm