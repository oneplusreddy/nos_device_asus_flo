# Release name
PRODUCT_RELEASE_NAME := flo

# Inherit some AICP  stuff.
#$(call inherit-product, vendor/nitrogen/config/telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
# Inherit device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := aosp_flo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7 2013 Wifi
PRODUCT_MANUFACTURER := Asus

PRODUCT_RESTRICT_VENDOR_FILES := false

