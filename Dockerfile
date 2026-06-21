FROM alpine:latest
RUN apk add --no-cache xray
CMD ["xray", "-c", "/etc/xray/config.json"]
