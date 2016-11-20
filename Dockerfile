FROM gliderlabs/alpine:latest

RUN apk add --no-cache openjdk8-jre unzip wget ffmpeg sox

EXPOSE 58050/tcp 58051/tcp 1900/udp

CMD ["/bubbleupnpserver/launch.sh"]

RUN mkdir -p /bubbleupnpserver && \
    cd /bubbleupnpserver && \
    wget -q http://www.bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip && \
    unzip BubbleUPnPServer-distrib.zip && \
    chmod +x launch.sh && \
    rm BubbleUPnPServer-distrib.zip
