#!/usr/bin/env sh
if [ "$(id -u)" != "0" ]; then
	echo "You must be root to execute the script. Exiting."
	exit 1
fi
wget https://raw.githubusercontent.com/puarudz/install2012/main/ti.sh
bash ti.sh https://files.storage.vn.vsicloud.com/winsv2012.gz
