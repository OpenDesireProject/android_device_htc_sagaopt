$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/saga/device.mk)

PRODUCT_DEVICE := saga
PRODUCT_NAME := cm_saga
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire S
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_saga BUILD_FINGERPRINT="htc_wwe/htc_saga/saga:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/test-keys" PRIVATE_BUILD_DESC="htc_saga-$(TARGET_BUILD_VARIANT) $(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) test-keys"

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
TARGET_BOOTANIMATION_HALF_RES := true
