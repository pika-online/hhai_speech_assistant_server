# pip3 install shadowsocks

mkdir -p /etc/shadowsocks
echo "{
    \"server\": \"www.funsound.cn\",
    \"server_port\": 8388,
    \"local_address\": \"127.0.0.1\",
    \"local_port\": 1090,
    \"password\": \"wei.0418\",
    \"timeout\": 300,
    \"method\": \"aes-256-cfb\"
}" > /etc/shadowsocks/config.json