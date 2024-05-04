#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar
# Wait untill the processeshave been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1
#(polybar power)&
#(polybar clock)&
#(polybar spotify)&
#(polybar workspaces)&
#(polybar cava)&
#(polybar weather)&
#(polybar sound)&
#(polybar settings)&
polybar main &
