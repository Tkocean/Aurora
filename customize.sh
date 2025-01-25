#!/sbin/sh
SKIPUNZIP=1
ASH_STANDALONE=1

if [ "$BOOTMODE" ! = true ] ; then
  abort "Error: Please install in Magisk Manager or KernelSU Manager"
elif [ "$KSU" = true ] && [ "$KSU_VER_CODE" -lt 10670 ] ; then
  abort "Error: Please update your KernelSU and KernelSU Manager or KernelSU Manager"
fi

unzip -qo "${ZIPFILE}" -x 'META-INF/*' -d $MODPATH

DATADIR="/data/Aurora"

mkdir -p ${DATADIR}/Kernel
mkdir -p ${DATADIR}/Providers
mv -n ${MODPATH}/Config ${DATADIR}/
rm -rf ${MODPATH}/Config
set_perm_recursive ${MODPATH}/system/bin/Aurora 0 0 6110 6110
