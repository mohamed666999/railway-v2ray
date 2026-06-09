FROM alpine:latest

# تحديث النظام وتثبيت المتطلبات
RUN apk add --no-cache wget unzip ca-certificates

# تحميل آخر إصدار من V2Ray
RUN wget -q https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip -q v2ray-linux-64.zip -d /v2ray && \
    rm v2ray-linux-64.zip && \
    chmod +x /v2ray/v2ray

# نسخ ملف التكوين
COPY config.json /v2ray/config.json

# تعيين مجلد العمل
WORKDIR /v2ray

# تشغيل V2Ray
CMD ["./v2ray", "run", "-c", "config.json"]
