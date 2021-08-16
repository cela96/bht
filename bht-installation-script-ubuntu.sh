#!/bin/sh
cd ~/

sudo apt update

while true; do
    read -p "Do you want to do a full-upgrade?" upgrade
    case $upgrade in
        [Yy]* ) sudo apt full-upgrade -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

sudo apt install curl ksh smartmontools lsscsi -y
sudo apt install lvm2 -y

curl -O https://raw.githubusercontent.com/cela96/bht/master/bht

sudo mv ~/bht /bin/bht
sudo chmod +x /bin/bht
