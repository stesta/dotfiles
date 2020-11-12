# Repository
wget -qO - https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc     | sudo apt-key add -
echo "deb [arch=amd64] https://pkg.surfacelinux.com/debian release main" | sudo tee /etc/apt/sources.list.d/linux-surface.list

# Installation
sudo apt update
sudo apt-get install linux-headers-surface linux-image-surface surface-ipts-firmware libwacom-surface iptsd
sudo apt-get install linux-surface-secureboot-mok
systemctl reboot