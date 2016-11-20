#!/bin/bash

set -x

if [ ! -e "/bubbleupnpserver/configuration.xml" ];
then
    mkdir -p /bubbleupnpserver && \
    cd /bubbleupnpserver && \
    wget -q http://www.bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip && \
    unzip BubbleUPnPServer-distrib.zip && \
    chmod +x launch.sh && \
    rm BubbleUPnPServer-distrib.zip
fi

/bubbleupnpserver/launch.sh
