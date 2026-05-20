리눅스 공통화 설정과 분리하여 처리하자.

미니북 해결문제
화면 돌아감.


xrandr --output DSI-1 --rotate right




화면 돌리면 터치 안맞음.


xinput set-prop "Goodix Capacitive TouchScreen" \
"Coordinate Transformation Matrix" \
0 1 0 \
-1 0 1 \
0 0 1



마우스패드 터치로 클릭 안됨.


부팅시 실행..

6. 부팅 시 자동 적용 (추천)
스크립트 만들기
mkdir -p ~/bin
nano ~/bin/rotate-chuwi.sh

내용:

#!/bin/bash

xrandr --output DSI-1 --rotate right

xinput set-prop "Goodix Capacitive TouchScreen" \
"Coordinate Transformation Matrix" \
0 1 0 \
-1 0 1 \
0 0 1

권한:

chmod +x ~/bin/rotate-chuwi.sh
7. LXQt 자동실행 등록
mkdir -p ~/.config/autostart
nano ~/.config/autostart/chuwi-rotate.desktop

내용:

[Desktop Entry]
Type=Application
Exec=/home/USERNAME/bin/rotate-chuwi.sh
Name=CHUWI Rotate

USERNAME 을 실제 사용자명으로 바꾸세요.







한글 필요.