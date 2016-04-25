# Inherit CM common Phone stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/u8800pro/device_u8800pro.mk)

# Device identifier.
PRODUCT_DEVICE := u8800pro
PRODUCT_NAME := omni_u8800pro
PRODUCT_MODEL := U8800Pro
PRODUCT_MANUFACTURER := Huawei
