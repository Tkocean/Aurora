#!/system/bin/sh
export PATH="$(magisk --path)/.magisk/busybox:$PATH:/system/bin"

nohup /data/adb/magisk/busybox crond -c /data/adb/modules/Aurora/config > /dev/null 2>&1 &

(
  until [ $(getprop init.svc.bootanim) = "stopped" ]; do
    sleep 3
  done

  nohup /data/adb/magisk/busybox inotifyd /data/adb/Aurora/scripts/Aurora.inotify /data/adb/modules/Aurora/ >> /dev/null &

  rm -rf /data/adb/Aurora/run
  nohup /data/adb/Aurora/scripts/Aurora.service -s && /data/adb/Aurora/scripts/Aurora.iptables -s
)&