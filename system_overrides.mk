include $(CURDIR)/vendor.mk

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/$VENDOR/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/$VENDOR/overlay/$(TARGET_PRODUCT)

# Include release tool
TARGET_CUSTOM_RELEASETOOL := source vendor/$VENDOR/tools/squisher

# Copy custom ramdisk
PRODUCT_COPY_FILES += \
    VENDOR/$VENDOR/prebuilt/common/etc/init.$VENDOR.rc:root/init.$VENDOR.rc

# init.d script support
PRODUCT_COPY_FILES += \
    VENDOR/$VENDOR/prebuilt/common/bin/sysinit:system/bin/sysinit 

# userinit support
PRODUCT_COPY_FILES += \
    VENDOR/$VENDOR/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Gapps backup script
PRODUCT_COPY_FILES += \
    VENDOR/$VENDOR/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    VENDOR/$VENDOR/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    VENDOR/$VENDOR/prebuilt/common/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh



