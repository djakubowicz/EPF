sudo apt -y install apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose -y
sudo mkdir -p /etc/apt/keyrings
sudo apt-get install docker-compose-plugin -y
rm -r cultofthecat
git clone https://github.com/epfmng/cultofthecat.git
cd cultofthecat
docker compose down -v
docker compose up db app -d
