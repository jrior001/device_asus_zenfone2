PRODUCT_RUNTIMES := runtime_libart_default
TARGET_BOARD_PLATFORM := moorefield
TARGET_BOOTLOADER_BOARD_NAME := moorefield
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := x86
TARGET_CPU_VARIANT := x86
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_CPU_SMP := true
DEVICE_RESOLUTION := 1080x1920
#HAVE_SELINUX := true
#ANDROID_COMMON_BUILD_MK := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
USE_OPENGL_RENDERER := true
TARGET_GLOBAL_CFLAGS += -march=atom -mstackrealign -DUSE_SSSE3 -DUSE_SSE2 -mfpmath=sse

TARGET_DROIDBOOT_LIBS := libintel_droidboot
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"


# Inline kernel building
TARGET_KERNEL_CONFIG := fhd_defconfig
TARGET_KERNEL_SOURCE := kernel/asus/moorefield
TARGET_KERNEL_ARCH := x86_64
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-

BOARD_EGL_CFG := device/asus/zenfone2/egl.cfg

# bootstub as 2nd bootloader
TARGET_BOOTLOADER_IS_2ND := true

# enable ARM codegen for x86 with Houdini
BUILD_ARM_FOR_X86 := true

BOARD_FLASH_BLOCK_SIZE := 2048
BOARD_KERNEL_CMDLINE := init=/init pci=noearly loglevel=0 vmalloc=256M androidboot.hardware=mofd_v1
BOARD_KERNEL_CMDLINE += watchdog.watchdog_thresh=60 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789
BOARD_KERNEL_CMDLINE += snd_pcm.maximum_substreams=8 ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on debug_locks=0

# TWRP
TARGET_RECOVERY_INITRC := device/asus/zenfone2/init.rc
#TARGET_PREBUILT_RECOVERY_KERNEL := device/asus/zenfone2/zImage
TARGET_RECOVERY_FSTAB := device/asus/zenfone2/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true
TW_EXCLUDE_SUPERSU := true
TWRP_EVENT_LOGGING := false
TW_NO_USB_STORAGE := true
