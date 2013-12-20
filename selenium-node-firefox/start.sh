#!/bin/bash

Xvfb :10 -screen 5 1024x768x8 -ac &
export DISPLAY=:10.5

CONTAINER_IP=$(ip addr show dev eth0 | grep "inet " | awk '{print $2}' | cut -d '/' -f 1)
java -jar /opt/selenium-server-standalone-2.37.0.jar \
		-role webdriver -host ${CONTAINER_IP} \
		-hub http://${HUB_PORT_4444_TCP_ADDR}:4444/grid/register \
		-browser browserName=firefox,maxInstances=1,platform=LINUX
