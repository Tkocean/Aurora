#!/system/bin/sh
cp -r /data/cache/backup /storage/emulated/0/Android/Aurora

rm -rf /data/adb/Aurora
rm -rf /data/cache/backup/*
rm -rf /data/system/Dashboard
rm -rf /data/cache/temp/*
rm -rf /data/system/package_cache/*

echo "  Aurora uninstalled from your device." > /cache/magisk.log