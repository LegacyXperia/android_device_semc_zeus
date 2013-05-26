-include device/semc/zeus-common/BoardConfigCommon.mk
-include vendor/semc/zeus/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := nAa_zeus_defconfig

# Sensors
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_SHARP_GP2 := yes

TARGET_TOUCHPAD_INPUT_DEVICE_ID := 0x10003

BOARD_USES_STEREO_HW_SPEAKER := true

TARGET_OTA_ASSERT_DEVICE := R800i,R800a,R800at,zeus

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/zeus/bluedroid
