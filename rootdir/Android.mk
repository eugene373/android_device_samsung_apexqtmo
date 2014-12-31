LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE       := initlogo.rle
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/initlogo.rle
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.qcom
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/fstab.qcom
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.target.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.target.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := 80datanetworks
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/80datanetworks
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init.d
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := 60compass
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/60compass
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init.d
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := 70tether
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/70tether
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init.d
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := wifimac.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/wifimac.sh
LOCAL_MODULE_PATH  := $(TARGET_OUT)/bin
include $(BUILD_PREBUILT)
