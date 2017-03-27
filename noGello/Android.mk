# https://www.reddit.com/r/LineageOS/comments/61gqqt/why_is_the_gello_product_package_added_under_in/
# https://github.com/LineageOS/android_device_motorola_omap4-common/commit/573d21ca60cc3e4a16f54ead3454db6bfb9d20ab

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := noGello
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_OVERRIDES_PACKAGES := Gello
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
