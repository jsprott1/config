#!/bin/bash

battery_info=$(upower --show-info $(upower --enumerate | grep 'BAT') |\
	egrep "state|percentage" |\
	awk '{print $2}')

date_formatted=$(date +'%Y-%m-%d %H:%M:%S')

audio_volume=$(amixer -M get Master | grep 'Front Left:' | awk '{print $5}')

echo "Volume" $audio_volume $battery_info $date_formatted
