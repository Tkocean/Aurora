#!/sbin/sh
(
until [ $(getprop sys.boot_completed) -eq 1 ] ; do
  sleep 3
done
  Aurora start > /dev/null 2>&1
)&

exit 0