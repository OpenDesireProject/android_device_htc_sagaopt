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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common CM configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from saga device
$(call inherit-product, device/htc/sagaopt/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_sagaopt
PRODUCT_DEVICE := sagaopt
PRODUCT_BRAND := htc_wwe
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC DESIRE S
PRODUCT_GMS_CLIENTID_BASE := android-htc-rev
PRODUCT_RELEASE_NAME := sagaopt

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_saga \
    BUILD_FINGERPRINT="htc_wwe/htc_saga/saga:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/test-keys" \
    PRIVATE_BUILD_DESC="htc_saga-$(TARGET_BUILD_VARIANT) $(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) test-keys"
