COMMON_PATH := device/sony/common-treble

### KERNEL
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += coherent_pool=8M
BOARD_KERNEL_CMDLINE += sched_enable_power_aware=1 user_debug=31

### GRAPHICS
USE_OPENGL_RENDERER := true
BOARD_USES_ADRENO := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# RENDERSCRIPT
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

### PARTITIONS
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
# Build ext4 tools - system/vold
TARGET_USERIMAGES_USE_EXT4 := true

### VENDOR MANIFEST AND MATRIX
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/vendor/manifest.xml
DEVICE_MATRIX_FILE   := $(COMMON_PATH)/vendor/compatibility_matrix.xml
