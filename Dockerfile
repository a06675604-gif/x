FROM n8nio/n8n:latest

USER root
# Linux Chromium tarayıcısını yükle
RUN apk add --no-cache chromium

# Puppeteer'a sistemdeki Chromium'u kullanmasını söyle
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser \
    NODE_FUNCTION_ALLOW_EXTERNAL=puppeteer

USER node
