#!/usr/bin/env sh

if [ "$(id -u)" != "0" ]; then
    echo "You must be root to execute the script. Exiting."
    exit 1
fi

# Nhận đầu vào từ người dùng
read -p "Nhập lựa chọn (10, 12, 16, 19, 22): " choice

# Kiểm tra lựa chọn và xác định URL tương ứng
case "$choice" in
    10)
        url="https://files.storage.vn.vsicloud.com/win10.gz"
        ;;
    12)
        url="https://files.storage.vn.vsicloud.com/win12.gz"
        ;;
    16)
        url="https://files.storage.vn.vsicloud.com/win16.gz"
        ;;
    19)
        url="https://files.storage.vn.vsicloud.com/win19.gz"
        ;;
    22)
        url="https://files.storage.vn.vsicloud.com/win22.gz"
        ;;
    *)
        echo "Lựa chọn không hợp lệ. Vui lòng nhập 10, 12, 16, 19 hoặc 22."
        exit 1
        ;;
esac

# Tải xuống file ti.sh
wget https://raw.githubusercontent.com/puarudz/install2012/main/ti.sh

# Chạy ti.sh với URL đã chọn
bash ti.sh "$url"
