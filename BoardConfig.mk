#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_OTA_ASSERT_DEVICE := u8800pro,U8800PRO
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

# Platform
TARGET_BOOTLOADER_BOARD_NAME := u8800pro
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000 #10MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000 #10MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456 #256MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824 #1GB
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5242880 #5MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728 #128MB
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 4096000 #4000KB
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := kernel/huawei/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := kernel/huawei/prebuilt/kernel
#TARGET_KERNEL_SOURCE := kernel/huawei/android_huawei_kernel
#TARGET_KERNEL_CONFIG := jellytime_recovery_defconfig

# Recovery
TW_USE_TOOLBOX := false
TW_NO_REBOOT_BOOTLOADER := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := device/huawei/u8800pro/init.rc
TARGET_RECOVERY_FSTAB := device/huawei/u8800pro/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 480x854
SP1_NAME := "cust"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
SP2_NAME := "internal_sd"
SP2_BACKUP_METHOD := files
SP2_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH :=  "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sd"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true 
HAVE_SELINUX := true
BOARD_HAS_NO_REAL_SDCARD := false
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_RECOVERY_RMT_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8800pro/recovery/graphics.c
