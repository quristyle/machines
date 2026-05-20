# machines
장비별 설정파일을 sparse 로 관리할곳



사용할 장비폴더를 확인하여 git clone 하여 사용하라.

예를들면 minibookx 이면 

git clone --filter=blob:none --no-checkout https://github.com/quristyle/machines.git

cd machines

git sparse-checkout init --cone

git sparse-checkout set minibookx
