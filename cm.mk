# Release name
PRODUCT_RELEASE_NAME := GalaxyPocketNeo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml
 
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
 
# Inherit device configuration
$(call inherit-product, device/samsung/corsica/device_corsica.mk)
 
ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := corsica
PRODUCT_NAME := cm_corsica
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S5312

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=corsicadd TARGET_DEVICE=corsica BUILD_FINGERPRINT=samsung/corsicadd/corsica:4.1.2/JZO54K/S5312DDAMG1:user/release-keys PRIVATE_BUILD_DESC="corsicadd-user 4.1.2 JZO54K S5312DDAMG1 release-keys"
