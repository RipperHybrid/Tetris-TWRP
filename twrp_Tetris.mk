# Device identifier
PRODUCT_DEVICE := Tetris
PRODUCT_NAME := twrp_Tetris
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A015
PRODUCT_MANUFACTURER := Nothing
PRODUCT_RELEASE_NAME := CMF Phone 1

# Device specific configs
$(call inherit-product, device/nothing/Tetris/device.mk)

# Configure virtual_ab_ota.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# FUSE passthrough
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.vendor_boot=true \
    persist.sys.fuse.passthrough.enable=true
