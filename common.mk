COMMON_PATH := device/sony/common-treble

### INIT
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/ramdisk/init.common.rc:root/init.common.rc \
    $(COMMON_PATH)/ramdisk/init.common.srv.rc:root/init.common.srv.rc

# For android_filesystem_config.h permissions
PRODUCT_PACKAGES += \
    fs_config_files \
    fs_config_dirs

include $(COMMON_PATH)/common/*.mk
include $(COMMON_PATH)/system_prop.mk

$(call inherit-product, device/sony/common-treble/treble.mk)
