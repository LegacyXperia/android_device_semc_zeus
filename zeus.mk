# Copyright (C) 2011-2013 The CyanogenMod Project
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

# proprietary side of the device
$(call inherit-product, vendor/semc/zeus/zeus-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/zeus/overlay

$(call inherit-product, device/semc/zeus-common/zeus.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.semc.usb.rc:root/init.semc.usb.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.semc.rc:root/init.recovery.semc.rc \
    $(LOCAL_PATH)/rootdir/system/etc/hw_config.sh:system/etc/hw_config.sh

# Device specific configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/idc/cy8ctma300_touch.idc:system/usr/idc/cy8ctma300_touch.idc \
    $(LOCAL_PATH)/rootdir/system/usr/idc/synaptics_touchpad.idc:system/usr/idc/synaptics_touchpad.idc \
    $(LOCAL_PATH)/rootdir/system/usr/keychars/keypad-game-zeus.kcm:system/usr/keychars/keypad-game-zeus.kcm \
    $(LOCAL_PATH)/rootdir/system/usr/keychars/keypad-zeus.kcm:system/usr/keychars/keypad-zeus.kcm \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/keypad-game-zeus.kl:system/usr/keylayout/keypad-game-zeus.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/keypad-phone-zeus.kl:system/usr/keylayout/keypad-phone-zeus.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/keypad-zeus.kl:system/usr/keylayout/keypad-zeus.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    $(LOCAL_PATH)/rootdir/system/etc/sensors.conf:system/etc/sensors.conf

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.telephony.ril_class=SemcQualcomm7x30RIL \
    com.qc.hdmi_out=false
