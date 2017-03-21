########################################
############## Packages ################
########################################

# Remove Gello
REMOVE_PACKAGES := \
		Gello

PRODUCT_PACKAGES := $(filter-out $(REMOVE_PACKAGES),$(PRODUCT_PACKAGES))

# Hell yeah I want root baked in
PRODUCT_PACKAGES += \
		su

# Add wanted packages
PRODUCT_PACKAGES += \
		FDroid \
		Matlog

########################################
############# Settings #################
########################################

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \

# Enable data roaming
PRODUCT_PROPERTY_OVERRIDES := $(subst dataroaming=false,dataroaming=true,$(PRODUCT_PROPERTY_OVERRIDES))

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.type=eng;

# Disable multiuser
PRODUCT_PROPERTY_OVERRIDES += \
		fw.show_multiuserui=0

# PRODUCT_PROPERTY_OVERRIDES += \
# 		ro.debuggable=1

# Enable Root for adb and apps
# PRODUCT_PROPERTY_OVERRIDES += \
#     persist.sys.root_access=3


#ro.secure=0

# Enable advanced reboot
PRODUCT_PROPERTY_OVERRIDES += \
		persist.sys.advanced_reboot=1

# PRODUCT_PROPERTY_OVERRIDES += \
		# persist.sys.privacy_guard_default=1

# Updates overlay settings
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay/common

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
