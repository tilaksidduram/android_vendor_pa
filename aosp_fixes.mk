include $(CURDIR)/vendor.mk

# Include video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include camera effects
PRODUCT_COPY_FILES +=  \
    vendor/pa/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/pa/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Overide Google sounds with AOSP ones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Themos.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
