docker build -t squid-auth:1.0 .
mkdir logs
sudo chown proxy:proxy logs
sudo chmod ugo+w logs
docker run --name squid -d --publish 3129:3128 -e PROXY_DEBUG -e PROXY_USERNAME=enescva -e PROXY_PASSWORD=efsa --volume /workspace/squid-proxy-basic-auth/logs:/var/log/squid  squid-auth:1.0