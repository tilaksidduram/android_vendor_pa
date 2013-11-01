include $(CURDIR)/vendor.mk

# Source or prebuilt PA-prefs logic
ifneq ($(PREFS_FROM_SOURCE),true)
    PRODUCT_COPY_FILES += \
        vendor/pa/prebuilt/common/apk/ParanoidPreferences.apk:system/app/ParanoidPreferences.apk
else
    # Build paprefs from sources
    PRODUCT_PACKAGES += \
        ParanoidPreferences
endif

# Include ParanoidOTA
ifneq ($(NO_OTA_BUILD),true)
    PRODUCT_PACKAGES += \
        ParanoidOTA
endif

# Include bootanimation
ifneq ($(PARANOID_BOOTANIMATION_NAME),)
    PRODUCT_COPY_FILES += \
        vendor/pa/prebuilt/common/bootanimation/$(PARANOID_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
else
    PRODUCT_COPY_FILES += \
        vendor/pa/prebuilt/common/bootanimation/XHDPI.zip:system/media/bootanimation.zip
endif

