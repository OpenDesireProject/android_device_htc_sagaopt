# Copyright (C) 2016 The CyanogenMod Project
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

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit saga vendor
-include vendor/htc/saga/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := saga

# Use data partition size here because we are using
# it as /system
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1232072704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 5194304
BOARD_FLASH_BLOCK_SIZE := 262144

# Keep ro.product.device as saga to keep camera blobs happy.
TARGET_VENDOR_DEVICE_NAME := saga
# But use sagaopt for updater-script assert check
TARGET_OTA_ASSERT_DEVICE := sagaopt

# Kernel
TARGET_KERNEL_CONFIG := saga_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30
BOARD_KERNEL_CMDLINE := no_console_suspend=1  androidboot.selinux=permissive androidboot.hardware=htc7x30
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_BASE := 0x04400000
BOARD_KERNEL_PAGE_SIZE := 4096

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/sagaopt/bluetooth/include
BOARD_CUSTOM_BT_CONFIG := device/htc/sagaopt/bluetooth/vnd_saga.txt

# Camera
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true
USE_CAMERA_STUB := true

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/htc/sagaopt
TARGET_RECOVERY_FSTAB := device/htc/sagaopt/rootdir/fstab.htc7x30
