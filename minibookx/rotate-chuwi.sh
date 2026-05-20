#!/bin/bash

sleep 2

xrandr --output DSI-1 --rotate right

#xinput set-prop "Goodix Capacitive TouchScreen" "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1


xinput set-prop "pointer:Goodix Capacitive TouchScreen" "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1


