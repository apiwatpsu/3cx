cd ~/
apt install sudo lsb-release gnupg2 wget curl
sudo apt-get update
wget -O- https://repo.3cx.com/key.pub | sudo apt-key add
echo "deb http://repo.3cx.com/3cx buster-testing main" | sudo tee /etc/apt/sources.list/3cxpbx.list
sudo apt-get update
sudo apt-get install net-tools dphys-swapfile
apt-cache policy 3cxpbx | grep -o '18.*' | grep -o '^\S*'
echo "Select the Version to intall [PRESS ENTER]: " 
read version
sudo apt-get install 3cxpbx=$version
