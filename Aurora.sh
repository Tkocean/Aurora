#!/sbin/sh
(
until [ $(getprop sys.boot_completed) -eq 1 ] ; do
  sleep 3
done
Aurora start ; echo "PowerManagerService.noSuspend" > /sys/power/wake_lock
)&