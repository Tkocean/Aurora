#!/bin/sh

umount /system_ext/framework/oplusex/com.oplus.AutoLayout

resetprop -w sys.boot_completed 0

resetprop -n ro.boot.vbmeta.device_state locked
resetprop -n ro.boot.vbmeta.avb_version 1.2
resetprop -n ro.boot.vbmeta.hash_alg sha256
resetprop -n ro.boot.vbmeta.size 4096
resetprop -n ro.boot.verifiedbootstate green

resetprop -n ro.boot.flash.locked 1
resetprop -n ro.boot.veritymode enforcing
resetprop -n ro.boot.warranty_bit 0
resetprop -n ro.warranty_bit 0
resetprop -n ro.debuggable 0
resetprop -n ro.force.debuggable 0
resetprop -n ro.secure 1
resetprop -n ro.adb.secure 1
resetprop -n ro.build.type user
resetprop -n ro.build.tags release-keys
resetprop -n ro.vendor.boot.warranty_bit 0
resetprop -n ro.vendor.warranty_bit 0
resetprop -n vendor.boot.vbmeta.device_state locked
resetprop -n vendor.boot.verifiedbootstate green
resetprop -n sys.oem_unlock_allowed 0

# FUCK Realme
#resetprop -n ro.boot.realmebootstate green
#resetprop -n ro.boot.realme.lockstate 1

# FUCK MIUI
#resetprop -n ro.secureboot.lockstate locked