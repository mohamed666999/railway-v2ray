FROM ghcr.io/xtls/xray-core:latest

RUN mkdir -p /etc/xray

COPY config.json /etc/xray/config.json

EXPOSE 443

CMD ["xray", "run", "-c", "/etc/xray/config.json"]
