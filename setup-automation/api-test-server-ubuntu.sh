apt-get -y install docker &&
apt-get -y install docker-compose &&
useradd -rm docker &&
mkdir /home/docker/compose
wget -O /home/docker/compose https://raw.githubusercontent.com/renegadespork/lods-scripts/main/setup-automation/docker-compose.yml