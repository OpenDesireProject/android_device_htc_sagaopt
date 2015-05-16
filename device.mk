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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# HTC Audio
$(call inherit-product, device/htc/saga/media_a1026.mk)
$(call inherit-product, device/htc/saga/media_htcaudio.mk)

# call the proprietary setup
$(call inherit-product, vendor/htc/saga/saga-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/saga/overlay

COMMON_PATH := device/htc/saga

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/recovery/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
	$(COMMON_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
	$(COMMON_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
	$(COMMON_PATH)/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt \
	$(COMMON_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
	$(COMMON_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test \
	$(COMMON_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab \
	$(COMMON_PATH)/ramdisk/fstab.saga:root/fstab.saga \
	$(COMMON_PATH)/ramdisk/init.saga.rc:root/init.saga.rc \
	$(COMMON_PATH)/ramdisk/ueventd.saga.rc:root/ueventd.saga.rc

# GPS config
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/etc/gps.conf:system/etc/gps.conf

# gsm config xml file
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml

# ACDB
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/etc/firmware/default.acdb:system/etc/firmware/default.acdb \
	$(COMMON_PATH)/rootdir/system/etc/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
	$(COMMON_PATH)/rootdir/system/etc/firmware/default_org_wb.acdb:system/etc/firmware/default_org_wb.acdb

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    $(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    $(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_DualMic.txt:system/etc/AIC3254_REG_DualMic.txt \
    $(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_DualMic_XB.csv:system/etc/AIC3254_REG_DualMic_XB.csv \
    $(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_DualMic_XC.csv:system/etc/AIC3254_REG_DualMic_XC.csv \
    $(COMMON_PATH)/rootdir/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    $(COMMON_PATH)/rootdir/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    $(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

# Keylayouts
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/saga-keypad.kl:system/usr/keylayout/saga-keypad.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	$(COMMON_PATH)/rootdir/system/usr/idc/saga-keypad.idc:system/usr/idc/saga-keypad.idc

# Copy bcm4329 firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# BCM4329 firmware
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# GPS / BT / Lights / Sensors
PRODUCT_PACKAGES += \
	libbt-vendor \
	lights.saga \
	sensors.saga \
	librpc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.com.google.gmsversion=4.0_r3

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vold.umsdirtyratio=20

# Use cache partition for system app dexopt
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dexopt-data-only=0

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US

# Odexed extra version and goo.im rom
ifeq ($(TARGET_WITH_DEXPREOPT),true)
ifneq ($(TARGET_UNOFFICIAL_BUILD_ID),)
TARGET_UNOFFICIAL_BUILD_ID := ODEXED-$(TARGET_UNOFFICIAL_BUILD_ID)
else
TARGET_UNOFFICIAL_BUILD_ID := ODEXED
endif
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.rom=MustaKitkatNightlyOdexed
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.rom=MustaKitkatNightly
endif

# The rest of goo.im props
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.developerid=Mustaavalkosta \
	ro.goo.version=$(shell date -u +%Y%m%d)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# lower the increment
ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.heapgrowthlimit=36m

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := saga
PRODUCT_NAME := saga
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire S
PRODUCT_MANUFACTURER := HTC
