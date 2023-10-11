apt install sudo lsb-release gnupg2 wget curl
sudo apt-get update
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian buster main" | tee /etc/apt/sources.list.d/3cxpbx.list
sudo apt-get update
apt update && apt install net-tools dphys-swapfile htop mtr screen curl dnsutils -y
apt-cache policy 3cxpbx | grep -o '18.*' | grep -o '^\S*'
echo "Select the Version to intall [PRESS ENTER]: " 
read version
sudo apt-get install 3cxpbx=$version
