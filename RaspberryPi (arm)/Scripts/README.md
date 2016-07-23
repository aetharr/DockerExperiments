## start-containers.sh and stop-containers.sh
The point of these scripts is to allow you to launch multiple docker containers in one go from a single script. The commands will recurse into subdirectories from wherever you call them and either start or stop the containers.

The idea of these scripts is to be used in conjunction with System startup/shutdown configurations to allow docker containers to be fired up on startup and spun down on shutdown. Allowing for a full hosted-site-style experience.

See here for more reading: https://docs.docker.com/engine/admin/host_integration/