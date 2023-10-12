sudo apt-get update
wget -O- https://repo.3cx.com/key.pub | sudo apt-key add
echo "deb http://repo.3cx.com/3cx buster main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
sudo apt-get update
apt install gnupg
apt update && apt install net-tools dphys-swapfile htop mtr screen curl dnsutils -y
apt-cache policy 3cxpbx | grep -o '18.*' | grep -o '^\S*'
echo "Select the Version to intall [PRESS ENTER]: " 
read version
sudo apt-get install 3cxpbx=$version
