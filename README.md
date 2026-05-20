# machines
장비별 설정파일을 sparse 로 관리할곳



사용할 장비폴더를 확인하여 git clone 하여 사용하라.

예를들면 minibookx 이면 

git clone --filter=blob:none --no-checkout https://github.com/quristyle/machines.git

cd machines

git sparse-checkout init --no-cone

git sparse-checkout set /minibookx/

git checkout main


정리:

--cone
빠름
일반적 추천
root 파일은 같이 보임
--no-cone
완전 정밀 제어
root 파일 숨김 가능
패턴 직접 관리