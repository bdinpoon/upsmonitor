#!/bin/bash
#Install Script for upsmonitor service 
#Written by BarryDinpoon

#Download curl
apt-get install -y curl

mv upsmonitor /usr/bin/upsmonitor
chmod +x /usr/bin/upsmonitor

mv upsmonitor.service /etc/systemd/system/upsmonitor.service
systemctl daemon-reload
systemctl enable upsmonitor
systemctl start upsmonitor

echo "upsmonitor is now instaslled. The service has been started automatically."
echo "***NOTE*** If you haven't edited the script to include your InfluxDB information you will need to restart the service."
echo "***NOTE*** If you have not installed PowerPanel yet you will need to do that before this will work."




