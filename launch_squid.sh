docker build -t squid-auth:1.0 .
mkdir /workspace/logs
sudo chown proxy /workspace/logs
docker run --name squid -d --publish 3129:3128 -e PROXY_USERNAME=enescva -e PROXY_PASSWORD=efsa --volume /workspace/logs:/var/log/squid  squid-auth:1.0