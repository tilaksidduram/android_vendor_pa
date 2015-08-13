# Copyright (C) 2014 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_ferrari,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xxhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/xiaomi/ferrari/full_ferrari.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_ferrari
PRODUCT_DEVICE := ferrari
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 4i
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR := xiaomi

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="ferrari" TARGET_DEVICE="ferrari" BUILD_FINGERPRINT="Xiaomi/ferrari/ferrari:5.1.1/LMY48B:userdebug/test-keys" PRIVATE_BUILD_DESC="ferrari-userdebug 5.1.1 LMY48B test-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

endif
