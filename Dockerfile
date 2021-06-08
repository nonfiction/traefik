FROM traefik:v2.4.8
RUN apk -u add openssh
RUN mkdir -p /root/.ssh
COPY ./entrypoint.sh /entrypoint.sh
