#
# Copyright (C) 2014 The CyanogenMod Project
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
#

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/apexqtmo/apexqtmo-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/apexqtmo/overlay

# Inherit from msm8960-common
$(call inherit-product, device/samsung/msm8960-common/msm8960.mk)

# Keylayout & Hardware keyboard
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/keylayout/fsa9485.kl:system/usr/keylayout/fsa9485.kl \
    device/samsung/apexqtmo/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/samsung/apexqtmo/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/apexqtmo/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/apexqtmo/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/apexqtmo/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/apexqtmo/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \
    device/samsung/apexqtmo/keylayout/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl \
    device/samsung/apexqtmo/keylayout/sec_keypad.kcm:system/usr/keychars/sec_keypad.kcm \
    device/samsung/apexqtmo/keylayout/sec_keypad.idc:system/usr/idc/sec_keypad.idc

# These poor devices have smaller screens
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=182

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    initlogo.rle \
    init.bt.rc \
    init.target.rc \
    80datanetworks \
    60compass \
    70tether \
    wifimac.sh \
    camera.MSM8960 \

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/config/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/apexqtmo/config/audio_policy.conf:system/etc/audio_policy.conf

# Media profile
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/config/media_profiles.xml:system/etc/media_profiles.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/apexqtmo/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/apexqtmo/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/samsung/apexqtmo/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/samsung/apexqtmo/nfc/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
