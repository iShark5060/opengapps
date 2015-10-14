#!/sbin/sh
#
#Open GApps Tools
#by raulx222
#

case "$1" in
	save)
	rm -f /external_sd/Shark-GApps/aromagapps.prop
	rm -f /external_sd/Shark-GApps/bypass.prop
	rm -f /external_sd/Shark-GApps/rem.prop
	rm -f /external_sd/Shark-GApps/extra.prop
	[ ! -d /external_sd/Shark-GApps ] && mkdir /external_sd/Shark-GApps
	cp /tmp/aroma/aromagapps.prop /external_sd/Shark-GApps/aromagapps.prop
	cp /tmp/aroma/bypass.prop /external_sd/Shark-GApps/bypass.prop
	cp /tmp/aroma/rem.prop /external_sd/Shark-GApps/rem.prop
	cp /tmp/aroma/extra.prop /external_sd/Shark-GApps/extra.prop
	;;
	load)
	[ -f /external_sd/Shark-GApps/aromagapps.prop ] && rm -f /tmp/aroma/aromagapps.prop && cp /external_sd/Shark-GApps/aromagapps.prop /tmp/aroma/aromagapps.prop
	[ -f /external_sd/Shark-GApps/bypass.prop ] && rm -f /tmp/aroma/bypass.prop && cp /external_sd/Shark-GApps/bypass.prop /tmp/aroma/bypass.prop
	[ -f /external_sd/Shark-GApps/rem.prop ] && rm -f /tmp/aroma/rem.prop && cp /external_sd/Shark-GApps/rem.prop /tmp/aroma/rem.prop
	[ -f /external_sd/Shark-GApps/extra.prop ] && rm -f /tmp/aroma/extra.prop && cp /external_sd/Shark-GApps/extra.prop /tmp/aroma/extra.prop
	;;
	reset)
	rm -f /tmp/aroma/aromagapps.prop
	rm -f /tmp/aroma/bypass.prop
	rm -f /tmp/aroma/rem.prop
	rm -f /tmp/aroma/extra.prop
	;;
esac
