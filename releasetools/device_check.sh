#!/sbin/sh

if grep -q "IM-A890S" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef59s/* /system/system/vendor/firmware/

elif grep -q "IM-A890K" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef59k/* /system/system/vendor/firmware/

elif grep -q "IM-A890L" /dev/block/mmcblk0p10 ; then
	mv /system/system/vendor/etc/firmware_ef59l/* /system/system/vendor/firmware/
fi

rm -rf /system/system/vendor/etc/firmware_ef59s
rm -rf /system/system/vendor/etc/firmware_ef59k
rm -rf /system/system/vendor/etc/firmware_ef59l
rm -rf /system/system/bin/device_check.sh
