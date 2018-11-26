#!/bin/bash
#Install Script for upsmonitor service
#Written by BarryDinpoon

mv upsmonitor /usr/bin/upsmonitor
chmod +x /usr/bin/upsmonitor

mv upsmonitor.service /etc/systemd/system/upsmonitor.service
systemctl daemon-reload

echo "upsmonitor is now installed. You may start the service by running systemctl start upsmonitor.service"
echo "***NOTE*** If you have not edited your InfluxDB information into upsmonitor script you will need to do that now!"
echo "***NOTE*** If you have not installed PowerPanel yet you will need to do that now otherwise this will not work."
