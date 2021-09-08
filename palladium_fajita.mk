#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fajita device
$(call inherit-product, device/oneplus/fajita/device.mk)

# Inherit some common PalladiumOS stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Official
PALLADIUM_BUILDTYPE := OFFICIAL

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
ifeq ($(with_gapps), yes)
PALLADIUM_BUILD_VARIANT := GAPPS
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
endif

# FOD Animation
EXTRA_FOD_ANIMATIONS := true

# Maintainer & Device Props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.maintainer=Durgesh33 \
    ro.palladiumdevice.cpu=SDM845\
    ro.palladiumdevice.display=6.41 \
    ro.palladiumdevice.displaytype=Optic.AMOLED \
    ro.palladiumdevice.battery=3700mAh \
    ro.palladiumdevice.camera=16MP+20MP

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := palladium_fajita
PRODUCT_DEVICE := fajita
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6013

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus6T \
    PRODUCT_NAME=OnePlus6T \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.210805.001.A1 7474174 release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.210805.001.A1/7474174:user/release-keys
