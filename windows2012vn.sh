#!/usr/bin/env sh
if [ "$(id -u)" != "0" ]; then
	echo "You must be root to execute the script. Exiting."
	exit 1
fi
rm ti.sh
ipAddr=$(curl https://dailysieure.com/ip)
#ipAddr=$("$ipAddr" | cut -d' ' -f 1)
echo "Ip cua ban la $ipAddr"
LINK="https://dailysieure.com/check-lic-vps-windows/$ipAddr"
echo "Tai file $LINK"
DAILYSIEUREIP=$(curl ${LINK})
echo "Xong, Dang cai dat cho VPS IP $ipAddr"
wget https://raw.githubusercontent.com/puarudz/install2012/main/ti.sh
bash ti.sh http://103.188.244.125:8080/ipfs/Qmdo888hgNxtMeaGVsUi3A6w1cjpGx1ZMTcExPRyxLkqRx?filename=windows2012.img.gz
