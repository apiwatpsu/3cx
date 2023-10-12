sudo apt-get update
wget -O- https://repo.3cx.com/key.pub | sudo apt-key add
echo "deb http://repo.3cx.com/3cx buster main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
sudo apt-get update
sudo apt install gnupg
sudo apt-get update 
sudo apt install net-tools dphys-swapfile htop mtr screen curl dnsutils -y
sudo apt list policy 3cxpbx -a
