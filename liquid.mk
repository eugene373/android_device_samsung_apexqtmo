$(call inherit-product, device/samsung/apexqtmo/full_apexqtmo.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit some common LiquidSmooth stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=apexqtmo \
    TARGET_DEVICE=apexqtmo \
    BUILD_FINGERPRINT="samsung/apexqtmo/apexqtmo:4.4.2/KOT49H/T699UVBMC5:user/release-keys" \
    PRIVATE_BUILD_DESC="apexqtmo-user 4.4.2 KOT49H T699UVBMC5 release-keys"

PRODUCT_NAME := liquid_apexqtmo
PRODUCT_DEVICE := apexqtmo

