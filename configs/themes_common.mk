# T-Mobile theme engine
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/pa/prebuilt/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml \
       vendor/pa/prebuilt/etc/permissions/org.cyanogenmod.theme.xml:system/etc/permissions/org.cyanogenmod.theme.xml
