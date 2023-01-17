apt-get -y install docker &&
apt-get -y install docker-compose &&
useradd -rmg 103 docker &&
mkdir /home/docker/compose &&
wget -O /home/docker/compose/docker-compose.yml https://raw.githubusercontent.com/renegadespork/lods-scripts/main/setup-automation/docker-compose.yml &&
docker-compose -f /home/docker/compose/docker-compose.yml up -d