#!/bin/bash
echo "Installing spotify-connect-web dependencies"

echo "Checking if volspotconnect service exists"
if [ ! -f "/etc/systemd/system/volspotconnect.service" ];
	then
		echo "file volspotconnect.service doesn't exist, creating"
		cd /data/plugins/music_service/volspotconnect/
#		cp /data/plugins/music_service/volspotconnect/volspotconnect.service.tar /
#		cd /
		sudo tar -xvf volspotconnect.service.tar -C /
#		rm /volspotconnect.service.tar
	else
		echo "volspotconnect.service already exists. Nothing to do !"
fi

#required to end the plugin install
echo "plugininstallend"