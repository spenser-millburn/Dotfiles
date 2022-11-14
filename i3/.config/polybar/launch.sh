#!/usr/bin/env bash
source ./icons.sh
killall -q polybar

echo "---" | tee -a /tmp/polybar.log
polybar example 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bars launched..."
