#!/sbin/sh

# By YaAlex @ xda-developers #

if [ -f /sys/devices/soc0/soc_id ]; then
    soc_id=`cat /sys/devices/soc0/soc_id`
else
    soc_id=`cat /sys/devices/system/soc/soc0/id`
fi
case "$soc_id" in
    "206" | "247" | "248" | "249" | "250")
		# Apply MSM8916
		exit
	;;
    "239" | "241" | "263" | "268" | "269" | "270" | "271")
		# Apply MSM8939
		rm -rf /system/etc/firmware
		cp -rf /tmp/install/Z010DD/system/* /system/
	;;
esac