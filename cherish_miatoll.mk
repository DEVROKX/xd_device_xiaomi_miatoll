# Copyright (C) 2020 Fluid
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# CherishOS stuff.
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_USES_AOSP_RECOVERY := true

# CherishOS Build.
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
#CHERISH_VANILLA := true
#TARGET_USES_PICO_GAPPS := true
USE_PIXEL_CHARGING := true
TARGET_INCLUDE_CARRIER_SETTINGS := true

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# CherishOS props
CHERISH_BUILD_TYPE=OFFICIAL
CHERISH_MAINTAINER := RITESHROKX
CHERISH_CHIPSET := SD720G
CHERISH_BATTERY := 5020mAh
CHERISH_DISPLAY := 1080x2400

PRODUCT_NAME := cherish_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6250
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miatoll_global-user 12 SKQ1.211019.001 V14.0.5.0.SJZMIXM release-keys"

BUILD_FINGERPRINT := Redmi/miatoll_global/miatoll:12/RKQ1.211019.001/V14.0.5.0.SJZMIXM:user/release-keys