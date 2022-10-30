#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := phoenix_sprout

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/phoenix/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := phoenix
PRODUCT_NAME := twrp_phoenix
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Q9 One
PRODUCT_MANUFACTURER := LG

PRODUCT_BUILD_PROP_OVERRIDES += \
		TARGET_DEVICE=phoenix_sprout \
		PRODUCT_NAME=phoenix_lgu_kr \
		PRIVATE_BUILD_DESC="phoenix_lgu_kr_aosp-eng 11 RKQ1.201123.002 8998110220201 release-keys"

BUILD_FINGERPRINT="lge/phoenix_lgu_kr/phoenix_sprout:11/RKQ1.201123.002/8998110220201:user/release-keys"
