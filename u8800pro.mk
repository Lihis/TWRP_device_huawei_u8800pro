# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/u8800pro/device_u8800pro.mk)

# Device identifier.
PRODUCT_DEVICE := u8800pro
PRODUCT_NAME := u8800pro
PRODUCT_BRAND := huawei
PRODUCT_MODEL := u8800pro
PRODUCT_MANUFACTURER := huawei
