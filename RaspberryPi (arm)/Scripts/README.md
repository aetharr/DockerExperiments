## start-containers.sh and stop-containers.sh
The point of these scripts is to allow you to launch multiple docker containers in one go from a single script. The commands will recurse into subdirectories from wherever you call them and either start or stop the containers.

The idea of these scripts is to be used in conjunction with System startup/shutdown configurations to allow docker containers to be fired up on startup and spun down on shutdown. Allowing for a full hosted-site-style experience.

See here for more reading: https://docs.docker.com/engine/admin/host_integr/
tion/

## dockercontainers.service

This file is a ```systemd``` confirugation file. This will allow you to automatically run ```docker-compose``` scripts when booting up your computer and then stops ```docker-compose``` scripts when shutting down the system.

For my setup, it assumes that all the containers you wish to run are located in the /home/pi/containers directory, and recursively searches within for ```docker-compose.yml``` files to execute.

#### Installation
* Copy the file to the ```/etc/systemd/system/dockercontainers.service``` folder.
* ```chmod 664 /etc/systemd/system/dockercontainers.service``` to assign the appropriate permissions
* ```systemctl daemon-reload``` to refresh the system states
* ```systemctl enable dockercontainers.service``` to enable the service to run on startup.