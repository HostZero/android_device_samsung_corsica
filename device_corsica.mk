$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/corsica/corsica-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/corsica/overlay

# LDPI assets
PRODUCT_AAPT_CONFIG := normal ldpi mdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/corsica/rootdir/init.rhea_ss_corsica.rc:root/init.rhea_ss_corsica.rc \
	device/samsung/corsica/rootdir/init.bcm2165x.usb.rc:root/init.bcm2165x.usb.rc \
	device/samsung/corsica/rootdir/init.log.rc:root/init.log.rc \
	device/samsung/corsica/rootdir/ueventd.rhea_ss_corsica.rc:root/ueventd.rhea_ss_corsica.rc \
	device/samsung/corsica/rootdir/init.recovery.rhea_ss_corsica.rc:root/init.recovery.rhea_ss_corsica.rc \
	device/samsung/corsica/rootdir/fstab.rhea_ss_corsica:root/fstab.rhea_ss_corsica \
        device/samsung/corsica/rootdir/ril_data.sh:root/ril_data.sh \
 
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	device/samsung/corsica/configs/etc/media_codecs.xml:system/etc/media_codecs.xml \
        device/samsung/corsica/configs/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/corsica/configs/etc/audio_policy.conf:system/etc/audio_policy.conf \

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/corsica/keylayout/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
	device/samsung/corsica/keylayout/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
	device/samsung/corsica/keylayout/cyttsp4_btn.kl:system/usr/keylayout/cyttsp4_btn.kl \
	device/samsung/corsica/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/samsung/corsica/keylayout/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \
	device/samsung/corsica/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \
	device/samsung/corsica/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \

# Filesystem management tools
PRODUCT_PACKAGES += \
	setup_fs

# Usb accessory
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Audio modules
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
        libstagefrighthw \
	lights.rhea

USE_CUSTOM_AUDIO_POLICY := 1

# Device-specific packages
PRODUCT_PACKAGES += \
	SamsungServiceMode \

# Charger
PRODUCT_PACKAGES += \
	charger_res_images

# Wi-Fi
PRODUCT_PACKAGES += \
	hostapd \
	wpa_supplicant 

# EGL 
PRODUCT_PACKAGES += \
    libGLES_android

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Support for Browser's saved page feature. This allows
# for pages saved on previous versions of the OS to be
# viewed on the current OS.
PRODUCT_PACKAGES += \
    libskia_legacy

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    mobiledata.interfaces=wlan0,gprs,rmnet0,rmnet1 \
    ro.telephony.ril_class=SamsungBCMRIL \
    ro.zygote.disable_gl_preload=true \
    ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc \
    persist.radio.multisim.config=dsds \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.call_ring=0 \
    persist.sys.force_highendgfx=true \
    
# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

# Override phone-hdpi-512-dalvik-heap to match value on stock
# - helps pass CTS com.squareup.okhttp.internal.spdy.Spdy3Test#tooLargeDataFrame)
# (property override must come before included property)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=56m \

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_corsica
PRODUCT_DEVICE := corsica
