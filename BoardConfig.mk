USE_CAMERA_STUB := true

# Legacy MMAP for pre-lollipop blobs
BOARD_USES_LEGACY_MMAP := true

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := rhea
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

TARGET_ARCH_LOWMEM := true

TARGET_BOOTLOADER_BOARD_NAME := rhea

BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 mem=456M androidboot.console=ttyS0 gpt v3d_mem=67108864 pmem=24M@0x9E800000
BOARD_KERNEL_BASE := 0x82000000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000

# This is actually 1002438656, but reducing to 0 MB to support users using repartition.
# Feel free to increase when needed
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1002438656
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2173120512
BOARD_CACHEIMAGE_PARTITION_SIZE := 573741824
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
BLOCK_BASED_OTA := false

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Kernel (compile with gcc-4.7 cuz legacy here :3)
TARGET_KERNEL_SOURCE := 
TARGET_KERNEL_CONFIG := 

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/corsica/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/corsica/bluetooth/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
#TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
BOARD_EGL_NEEDS_FNW := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DEGL_NEEDS_FNW
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Audio
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DRHEA_HWC

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/corsica/ril/
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/corsica/rootdir/fstab.rhea_ss_corsica
BOARD_LDPI_RECOVERY := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/corsica/recovery/recovery_keys.c
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.rhea

# MTP
BOARD_MTP_DEVICE := /dev/mtp_usb

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/corsica/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/corsica/include

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

# disable jack server 
ANDROID_COMPILE_WITH_JACK := false

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/corsica/sepolicy

# TWRP stuff
DEVICE_RESOLUTION := 240x320
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/corsica/kernel
TARGET_RECOVERY_FSTAB = device/samsung/corsica/recovery/twrp.fstab
HAVE_SELINUX := true
TW_THEME := portrait_mdpi
TW_FLASH_FROM_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_INCLUDE_CRYPTO := true
TW_IGNORE_MAJOR_AXIS_0 := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := false
TW_NO_BATT_PERCENT := false
TW_NO_REBOOT_BOOTLOADER := false
TW_NO_REBOOT_RECOVERY := false
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_USE_TOOLBOX := true
