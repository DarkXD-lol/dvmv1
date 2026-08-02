#!/bin/bash
set -e

echo "================================="
echo "      DVM v1 Installer"
echo "================================="

sudo apt update
sudo apt install -y curl git unzip

# Install Node.js 22
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs

cd /opt

if [ -d "dvmv1" ]; then
    rm -rf dvmv1
fi

git clone https://github.com/DarkXD-lol/dvmv1.git

cd dvmv1

npm install

npm run build

echo ""
echo "DVM v1 installed successfully!"
