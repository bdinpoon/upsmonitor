Installation is very simple. I have included an installation script for ease of use. You may otherwise install this manually with the steps below.

1. Download and install the correct PowerPanel Personal version from https://www.cyberpowersystems.com/products/software/power-panel-personal/#platform-section
2. Download both upsmonitor and upsmonitor.service from this repository.
3. Edit upsmonitor with your favorite text editor and enter the login information for your InfluxDB instance.
4. Move upsmonitor to /usr/bin/ 
5. Make upsmonitor executable. 
	chmod +x /usr/bin/upsmonitor
6. Move upsmonitor.service to /etc/systemd/system/upsmonitor.service
7. Run systemctl daemon-reload
8. The service is now installed and can be run with systemctl start upsmonitor.service. If you would like to start the service when the system boots you need to run systemctl enable upsmonitor.service. 