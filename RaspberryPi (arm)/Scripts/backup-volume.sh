#!/bin/sh

DisplayHelp () {
    echo 'Syntax is: '$0' ContainerNameContainingVolume PathRepresentedByVolume BackupName.tar'
    echo '  e.g. '$0' my-container /var/www/html my-backup.tar'
    echo ' '
}

RunBackup () {
    docker run --rm --volumes-from $1 -v $(pwd):/backup hypriot/rpi-alpine-scratch tar cvf /backup/$3.tar $2
}


if [ -z $1 ] ; then
    DisplayHelp
elif [ -z $2 ] ; then
    DisplayHelp
elif [ -z $3 ] ; then
    DisplayHelp
else
    RunBackup $1 $2 $3
fi
