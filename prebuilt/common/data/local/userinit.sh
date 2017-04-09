#!/system/bin/sh
# call userinit.sh if present in /system/data/local

# if [ -e /data/local/userinit.sh ];
# then
#    log -p i -t userinit "Executing /system//data/local/userinit.sh";
#    /system/bin/sh /system/data/local/userinit.sh;
#    setprop cm.userinit.active 1;
# fi;

if [[ ! -f "/data/.VENDOR_EXTRA_SETTINGS_UPDATED" ]]; then
  settings --cm put secure privacy_guard_default 1
  settings --cm put secure privacy_guard_notification 1
  settings --cm put secure advanced_reboot 1
  settings --cm put secure stats_collection 0

  settings put secure wake_gesture_enabled 0

  settings put global adb_enabled 1
  settings put global data_roaming 1
  settings put global development_settings_enabled 1

  touch "/data/.VENDOR_EXTRA_SETTINGS_UPDATED"
fi;
