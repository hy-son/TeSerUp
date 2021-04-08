#!/bin/bash

# Display the available update
message_update="$(/usr/lib/update-notifier/apt-check --human-readable)"
number_of_update="${message_update:0:1}"

echo $number_of_update
if [ "$number_of_update" -eq 0 ]; then
	icon="--success"
else
	icon="--error"
fi

telegram-notify "$icon" --text "$message_update"

