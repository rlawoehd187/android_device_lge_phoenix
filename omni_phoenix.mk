#
# Copyright 2018 The Android Open Source Project
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

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Build configuration for a very minimal build
$(call inherit-product, build/target/product/embedded.mk)

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)/bootctrl \
    $(LOCAL_PATH)/kernel-headers

# A/B updater
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor \
    vbmeta \
    dtbo

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier

# The following modules are included in debuggable builds only.
PRODUCT_PACKAGES_DEBUG += \
    bootctl \
    update_engine_client

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.msm8998

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.msm8998 \
    libcutils \
    libgptutils \
    libz

# Properties for decryption
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8998 \
    ro.hardware.gatekeeper=msm8998 \
    ro.hardware.bootctrl=msm8998 \
    ro.build.system_root_image=true

# Partitions (listed in the file) to be wiped under recovery.
TARGET_RECOVERY_WIPE := \
    $(LOCAL_PATH)/recovery/root/etc/recovery.wipe	

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=phoenix_lgu_kr \
   BUILD_PRODUCT=hoenix_sprout \
   TARGET_DEVICE=phoenix_sprout \
   BUILD_FINGERPRINT=lge/phoenix_lgu_kr/phoenix_sprout:11/RKQ1.201123.002/8998110220201:user/release-keys \
   PRIVATE_BUILD_DESC="phoenix_lgu_kr_aosp-eng 11 RKQ1.201123.002 8998110220201 release-keys"


PRODUCT_DEVICE := phoenix
PRODUCT_NAME := omni_phoenix
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Q9 One
PRODUCT_MANUFACTURER := LG
