FROM gliderlabs/alpine:latest

RUN apk add --no-cache openjdk8-jre unzip wget bash mc

RUN mkdir -p /bubbleupnpserver && \
    cd /bubbleupnpserver && \
    wget -q http://www.bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip && \
    wget -q http://www.bubblesoftapps.com/bubbleupnpserver/core/ffmpeg_linux.zip && \
    unzip BubbleUPnPServer-distrib.zip && \
    unzip ffmpeg_linux.zip && \
    chmod +x launch.sh && \
    rm BubbleUPnPServer-distrib.zip
    rm ffmpeg_linux.zip

EXPOSE 58050/tcp 58051/tcp 1900/udp

CMD ["/bubbleupnpserver/launch.sh"]
