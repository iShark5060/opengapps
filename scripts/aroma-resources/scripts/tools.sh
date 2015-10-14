#!/sbin/sh
#
#Open GApps Tools
#by raulx222
#

case "$1" in
	save)
	rm -f /sdcard1/Shark-GApps/aromagapps.prop
	rm -f /sdcard1/Shark-GApps/bypass.prop
	rm -f /sdcard1/Shark-GApps/rem.prop
	rm -f /sdcard1/Shark-GApps/extra.prop
	[ ! -d /sdcard1/Shark-GApps ] && mkdir /sdcard1/Shark-GApps
	cp /tmp/aroma/aromagapps.prop /sdcard1/Shark-GApps/aromagapps.prop
	cp /tmp/aroma/bypass.prop /sdcard1/Shark-GApps/bypass.prop
	cp /tmp/aroma/rem.prop /sdcard1/Shark-GApps/rem.prop
	cp /tmp/aroma/extra.prop /sdcard1/Shark-GApps/extra.prop
	;;
	load)
	[ -f /sdcard1/Shark-GApps/aromagapps.prop ] && rm -f /tmp/aroma/aromagapps.prop && cp /sdcard1/Shark-GApps/aromagapps.prop /tmp/aroma/aromagapps.prop
	[ -f /sdcard1/Shark-GApps/bypass.prop ] && rm -f /tmp/aroma/bypass.prop && cp /sdcard1/Shark-GApps/bypass.prop /tmp/aroma/bypass.prop
	[ -f /sdcard1/Shark-GApps/rem.prop ] && rm -f /tmp/aroma/rem.prop && cp /sdcard1/Shark-GApps/rem.prop /tmp/aroma/rem.prop
	[ -f /sdcard1/Shark-GApps/extra.prop ] && rm -f /tmp/aroma/extra.prop && cp /sdcard1/Shark-GApps/extra.prop /tmp/aroma/extra.prop
	;;
	reset)
	rm -f /tmp/aroma/aromagapps.prop
	rm -f /tmp/aroma/bypass.prop
	rm -f /tmp/aroma/rem.prop
	rm -f /tmp/aroma/extra.prop
	;;
esac
