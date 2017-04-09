########################################
############## Packages ################
########################################

# Remove Gello
# noGello/Android.mk
PRODUCT_PACKAGES += \
		noGello

# Add wanted packages
PRODUCT_PACKAGES += \
		FDroidPrivilegedExtension \
		FDroid

########################################
############### Root ###################
########################################

# Hell yeah I want root baked in
PRODUCT_PACKAGES += \
		su

# Enable Root for adb and apps
# BUG: Does not allow root access in adb shell unless you go into Developer Options and select the option.  Weird.
PRODUCT_PROPERTY_OVERRIDES += \
		persist.sys.root_access=3

########################################
############# Settings #################
########################################

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0 \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.debuggable=1

# Enable data roaming
PRODUCT_PROPERTY_OVERRIDES := $(subst dataroaming=false,dataroaming=true,$(PRODUCT_PROPERTY_OVERRIDES))

# Disable multiuser
PRODUCT_PROPERTY_OVERRIDES += \
		fw.show_multiuserui=0

# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1

# Updates overlay settings
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# This breaks stuff.  Don't use right now.
# PRODUCT_COPY_FILES += \
# 	vendor/extra/prebuilt/common/data/local/userinit.sh:root/data/local/userinit.sh \
# 	vendor/extra/prebuilt/common/etc/resolv.conf:root/etc/resolv.conf
