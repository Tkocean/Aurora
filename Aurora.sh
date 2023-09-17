export PATH="$(magisk --path)/.magisk/busybox:/data/adb/ksu/bin:$PATH"

(
  until [ $(getprop init.svc.bootanim) = "stopped" ]; do
    sleep 3
  done

  echo "PowerManagerService.noSuspend" > /sys/power/wake_lock
  Aurora start
)&

exit 0