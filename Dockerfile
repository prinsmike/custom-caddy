FROM alpine:latest
MAINTAINER prinsmike

EXPOSE 80 443 2015
VOLUME /root/.caddy
WORKDIR /srv

COPY caddy /usr/bin/caddy
COPY Caddyfile /etc/Caddyfile

RUN chmod 755 /usr/bin/caddy

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile", "--log", "stdout"]
