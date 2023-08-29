#!/system/bin/sh

(
  until [ $(getprop init.svc.bootanim) = "stopped" ]; do
    sleep 3
  done

  SPATH=/system/bin/Aurora
  echo "PowerManagerService.noSuspend" > /sys/power/wake_lock
  chattr -i ${SPATH} && chown 0:0 ${SPATH} && chmod 7110 ${SPATH} && ${SPATH} start
)&

exit 0