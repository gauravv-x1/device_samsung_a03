#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a03 device
$(call inherit-product, device/samsung/a03/device.mk)

PRODUCT_DEVICE := a03
PRODUCT_NAME := lineage_a03
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A035F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a03nnxx-user 13 TP1A.220624.014 A035FXXS5CWK1 release-keys"

BUILD_FINGERPRINT := samsung/a03nnxx/a03:11/RP1A.200720.012/A035FXXS5CWK1:user/release-keys
