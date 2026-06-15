# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Device identifier
PRODUCT_NAME := omni_msm8953_64
PRODUCT_DEVICE := msm8953_64
PRODUCT_BRAND := Sprocomm
PRODUCT_MODEL := C1
PRODUCT_MANUFACTURER := QUALCOMM

# TWRP root files (if any)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/sprocomm/msm8953_64/root,root)

# Fstab for recovery
PRODUCT_PACKAGES += \
    fstab.msm8953_64
