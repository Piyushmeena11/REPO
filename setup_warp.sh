#!/bin/bash

echo "Downloading Cloudflare Warp-plus (v1.2.2)..."
wget -O warp-plus.zip https://github.com/bepass-org/warp-plus/releases/download/v1.2.2/warp-plus_linux-amd64.zip
unzip -o warp-plus.zip
mv warp-plus-linux-amd64 warp-plus
chmod +x warp-plus

echo "Starting Warp-plus SOCKS5 proxy on 127.0.0.1:1080..."
# Start in background
./warp-plus -b 127.0.0.1:1080 &
sleep 3
echo "Warp-plus started."
