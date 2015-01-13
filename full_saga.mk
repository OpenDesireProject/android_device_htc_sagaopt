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

# Inherit from saga device
$(call inherit-product, device/htc/saga/saga.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_saga
PRODUCT_DEVICE := saga
PRODUCT_BRAND := htc_wwe
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Desire S