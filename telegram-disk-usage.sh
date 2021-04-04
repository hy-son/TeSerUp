#!/bin/bash


used_disk=$(df --output=pcent / | tr -dc '0-9')
used_boot=$(df --output=pcent /boot | tr -dc '0-9')
time_msg="$(date +"%e %b %Y, %a %r")"
python3 disk-usage-image.py --used_percent $used_disk --used_boot_percent $used_boot

message="Disk usage of the server"$'\n'"Time: $time_msg"$'\n'"Disk used: $used_disk %"

# if used_disk is more than 80 percent used error icon
if [ "$used_disk" -lt 80 ]; then
	icon="--success"
else
	icon="--error"
fi
echo $icon
echo $message
telegram-notify "$icon" --photo /opt/TeSerUp/img/disk_usage.png --text "$message" >/dev/null 2>&1

