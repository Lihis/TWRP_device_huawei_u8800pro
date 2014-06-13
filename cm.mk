# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/u8860/device_u8860.mk)

# Device identifier.
PRODUCT_DEVICE := u8860
PRODUCT_NAME := cm_u8860
PRODUCT_BRAND := huawei
PRODUCT_MODEL := u8860
PRODUCT_MANUFACTURER := huawei
