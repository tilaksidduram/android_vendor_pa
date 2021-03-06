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

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# This is CM!
PRODUCT_COPY_FILES += \
    vendor/pa/configs/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# CM Platform Library
PRODUCT_PACKAGES += \
    org.cyanogenmod.platform-res \
    org.cyanogenmod.platform \
    org.cyanogenmod.platform.xml

# Extra packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LockClock \
    Eleven \
    AudioFX \
    Screencast \
    Terminal \
    Profiles \
    CMSettingsProvider \
    CalendarWidget

# Extra tools
PRODUCT_PACKAGES += \
    busybox \
    e2fsck \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Viper4Android
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/apk/ViPER4Android.apk:system/app/ViPER4Android.apk

# Kryten2k35 OTAUpdates
PRODUCT_PACKAGES += \
    OTAUpdates

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

# Backuptool support
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/system/addon.d/50-backuptool.sh:system/addon.d/50-backuptool.sh \
    vendor/pa/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/pa/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh
