FROM ghcr.io/xtls/xray-core:latest

COPY config.json /etc/xray/config.json

EXPOSE 443

ENTRYPOINT ["xray"]
CMD ["run", "-c", "/etc/xray/config.json"]
