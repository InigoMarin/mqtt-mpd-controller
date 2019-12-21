#!/bin/bash


sudo apt install python3-pip
sudo pip3 install paho-mqtt
sudo apt install mpc
sudo apt install espeak


sudo mkdir /etc/mqtt_mpc_controller 
sudo cp config.ini /etc/mqtt_mpc_controller/

sudo cp mqtt-mpd-controller.py /usr/local/bin/mqtt_mpd_controller
sudo cp info.sh /usr/local/bin/

sudo cp mqtt-mpd-controller.service /lib/systemd/system/
sudo systemctl enable mqtt-mpd-controller.service
sudo systemctl start mqtt-mpd-controller.service

