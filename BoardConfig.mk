# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).


# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/saga/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := saga

BOARD_KERNEL_CMDLINE := no_console_suspend=1  androidboot.selinux=permissive androidboot.hardware=htc7x30
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_BASE := 0x04400000
BOARD_KERNEL_PAGE_SIZE := 4096

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 5194304
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_KERNEL_SOURCE := kernel/htc/msm7x30
TARGET_KERNEL_CONFIG := saga_defconfig

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/htc/saga

TARGET_RECOVERY_FSTAB := device/htc/saga/rootdir/fstab.htc7x30
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true

# Brightness
BRIGHTNESS_SYS_FILE := /sys/devices/platform/leds-pm8058/leds/keyboard-backlight/brightness

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_VOLD_MAX_PARTITIONS := 36

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/saga/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/saga/bluetooth/libbt_vndcfg.txt

# Camera
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true
USE_CAMERA_STUB := true

# RIL
BOARD_USE_NEW_LIBRIL_HTC := true

# No SDK blobs
BUILD_EMULATOR_SENSORS_MODULE := false
BUILD_EMULATOR_GPS_MODULE := false

ifeq ($(USE_DEXPREOPT),true)
    # Enable dex-preoptimization to speed up first boot sequence
    ifeq ($(HOST_OS),linux)
        ifeq ($(WITH_DEXPREOPT),)
            WITH_DEXPREOPT := true
        endif
    endif
endif

# TWRP
TW_THEME := portrait_mdpi
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_INCLUDE_CRYPTO := true
TW_NO_SCREEN_BLANK := true
TW_INCLUDE_DUMLOCK := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_VARIANT := twrp
TW_NO_USB_STORAGE := true
TW_NO_CPU_TEMP := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode
