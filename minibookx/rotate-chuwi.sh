#!/bin/bash

sleep 2

# 화면 회전
xrandr --output DSI-1 --rotate right

#xinput set-prop "Goodix Capacitive TouchScreen" "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1

# 터치스크린 회전 보정
xinput set-prop "pointer:Goodix Capacitive TouchScreen" "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1


# 터치패드 장비를 찾는다.
# xinput list
# 장비명을 찾고 확인한다. 이후 장비의 설정값을 아래와 같이 확인 한다.
# xinput list-props "XXXX0000:05 0911:5288 Touchpad"
# 아래와 같이 tapping enabled 가 0 이면 비활성화이다.
# libinput Tapping Enabled (326): 0
#
# xinput list-props "XXXX0000:05 0911:5288 Touchpad" | grep Tapping
#
#
#

# 마우스 터치로 클릭 기능 활성화
xinput set-prop "XXXX0000:05 0911:5288 Touchpad" "libinput Tapping Enabled" 1
