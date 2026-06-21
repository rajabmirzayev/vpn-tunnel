FROM alpine:latest
# Lazımi kitabxanaları yükləyirik
RUN apk add --no-cache curl unzip
# Xray-i birbaşa rəsmi github-dan endiririk
RUN curl -L -o xray.zip https://github.com/xtls/xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip xray.zip && \
    mv xray /usr/local/bin/xray && \
    chmod +x /usr/local/bin/xray && \
    rm xray.zip
# Faylı işə salırıq
CMD ["xray", "-c", "/etc/xray/config.json"]
