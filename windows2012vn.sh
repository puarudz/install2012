#!/usr/bin/env sh
if [ "$(id -u)" != "0" ]; then
	echo "You must be root to execute the script. Exiting."
	exit 1
fi
rm ti.sh
ipAddr=$(curl https://license.vsicloud.com/windows-install.php?action=ip)
#ipAddr=$("$ipAddr" | cut -d' ' -f 1)
echo "Ip cua ban la $ipAddr"
LINK="https://license.vsicloud.com/windows-install.php?action=ip"
echo "Tai file $LINK"
DAILYSIEUREIP=$(curl ${LINK})
if [ "$ipAddr" != "$DAILYSIEUREIP" ]
then
   echo "----------------------to9xvn------------------"
   echo "----------------------to9xvn------------------"
   echo "----------------------to9xvn------------------"
   echo "----------------------to9xvn------------------"
   echo "----------------------to9xvn------------------"
   echo "----------------------to9xvn------------------"
   echo "----------------------Loi roi ban oi------------------"
   echo "IP $ipAddr khong nam trong danh sach cho phep, lien he https://dailysieure.com/to9xvn de duoc biet them $DAILYSIEUREIP"
   rm windows2012vn.sh
   exit
fi
echo "Xong, Dang cai dat cho VPS IP $ipAddr"
wget https://raw.githubusercontent.com/puarudz/install2012/main/ti.sh
bash ti.sh http://103.188.244.125:8080/ipfs/Qmdo888hgNxtMeaGVsUi3A6w1cjpGx1ZMTcExPRyxLkqRx?filename=windows2012.img.gz
