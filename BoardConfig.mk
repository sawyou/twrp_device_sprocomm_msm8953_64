# BoardConfig.mk for Sprocomm C1 (msm8953_64)

DEVICE_PATH := device/sprocomm/msm8953_64

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8953

# Kernel (prebuilt)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 buildvariant=user veritykeyid=id:7e4333f9bba00adfe0ede979e28ed1920492b40f
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --kernel_offset $(BOARD_KERNEL_OFFSET) --second_offset $(BOARD_SECOND_OFFSET)

# Partition table
BOARD_SUPPORTS_SYSTEM_ROOT := true
BOARD_SUPPORTS_SLOTSELECT := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# TWRP specific
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone0/temp"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
TW_SCREEN_BLANK_ON_BOOT := true
