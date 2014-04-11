$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/ZTE/N986/device_N986.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_N986
PRODUCT_DEVICE := N986
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := N986
PRODUCT_RESTRICT_VENDOR_FILES := false
