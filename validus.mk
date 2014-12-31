$(call inherit-product, device/samsung/apexqtmo/full_apexqtmo.mk)

# Enhanced NFC
$(call inherit-product, vendor/validus/config/nfc_enhanced.mk)

# Inherit some common validus stuff.
$(call inherit-product, vendor/validus/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=apexqtmo \
    TARGET_DEVICE=apexqtmo \
    BUILD_FINGERPRINT="samsung/apexqtmo/apexqtmo:4.4.2/KOT49H/T699UVBMC5:user/release-keys" \
    PRIVATE_BUILD_DESC="apexqtmo-user 4.4.2 KOT49H T699UVBMC5 release-keys"

PRODUCT_NAME := validus_apexqtmo
PRODUCT_DEVICE := apexqtmo

