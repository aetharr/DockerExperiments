#!/bin/sh

echo Stopping Docker Containers
find . -name \docker-compose.yml -print | xargs -L 1 -I REPLACE_ME docker-compose -f "REPLACE_ME" down