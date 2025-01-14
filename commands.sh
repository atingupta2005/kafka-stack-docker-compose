curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
sudo usermod -aG docker $USER
exit

mkdir -p ~/.docker/cli-plugins/

curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

docker compose version


git clone https://github.com/atingupta2005/kafka-stack-docker-compose

# Get public ip address of the cloud vm and update below

cd kafka-stack-docker-compose

cat .env

echo "EXTERNAL_PUBLIC_IP=52.170.103.92" >> .env

cat .env

docker compose -f full-stack-zk-multiple-kafka-multiple-full-stack-ag.yml up -d

curl localhost:8080
curl localhost:8088
curl localhost:8083

login:
admin@admin.io
admin