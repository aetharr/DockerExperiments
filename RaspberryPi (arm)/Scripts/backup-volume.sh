#!/bin/sh

DisplayHelp () {
    echo 'Syntax is: $0 ContainerNameContainingVolume PathRepresentedByVolume'
    echo '  e.g. $0 my-container /var/www/html'
    echo ' '
}

RunBackup () {
    docker run --rm --volumes-from $1 -v $(pwd):/backup hypriot/rpi-alpine-scratch tar cvf /backup/$1.tar $2
}


if [ -z $1 ] ; then
    DisplayHelp
elif [ -z $2 ] ; then
    DisplayHelp
else
    RunBackup
fi
