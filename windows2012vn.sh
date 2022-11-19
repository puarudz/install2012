#!/usr/bin/env sh
if [ "$(id -u)" != "0" ]; then
	echo "You must be root to execute the script. Exiting."
	exit 1
fi
wget https://raw.githubusercontent.com/puarudz/install2012/main/ti.sh
bash ti.sh http://103.188.244.125:8080/ipfs/Qmdo888hgNxtMeaGVsUi3A6w1cjpGx1ZMTcExPRyxLkqRx?filename=windows2012.img.gz
