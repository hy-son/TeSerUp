#!/bin/bash

# Display the available update
echo "$(date +"%e %b %Y, %a %r") Looking for update"
message_update="$(/usr/lib/update-notifier/apt-check --human-readable)"
number_of_update="${message_update:0:1}"

echo "$(date +"%e %b %Y, %a %r") $number_of_update have been found"
if [ "$number_of_update" -eq 0 ]; then
	icon="--success"
else
	icon="--error"
fi

telegram-notify "$icon" --text "$message_update"
echo "$(date +"%e %b %Y, %a %r") Update notification send"
