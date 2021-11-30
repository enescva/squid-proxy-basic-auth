FROM ubuntu:latest

RUN apt-get -qqy update
RUN apt-get -qqy upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -qqy install apache2-utils squid3

COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

EXPOSE 3128
RUN mkdir -p /var/cache/squid && chown proxy -R /var/cache/squid

ENTRYPOINT ["/entrypoint.sh"]
