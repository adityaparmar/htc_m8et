LOCAL_PATH := device/htc/m8et/

#
# Boot files
#
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
    $(transform-prebuilt-to-target)
