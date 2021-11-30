docker build -t squid-auth:1.0 .
docker run --name squid -d --publish 3129:3128 -e PROXY_USERNAME=enescva -e PROXY_PASSWORD=efsa --volume /c/Squid/logs:/var/log/squid  squid-auth:1.0
