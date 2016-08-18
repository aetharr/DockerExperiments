#!/bin/sh

DisplayHelp () {
    echo 'Syntax is: '$0' ContainerNameContainingVolume PathRepresentedByVolume BackupFilename'
    echo '  e.g. '$0' my-container /var/www/html mybackup.tar'
    echo ' '
}

RunRestore () {
    docker run --rm --volumes-from $1 -v $(pwd):/backup alpine-mini bash -c "cd $2 && rm -rf * && cd / && tar xvf /backup/$3"
}


if [ -z $1 ] ; then
    DisplayHelp
elif [ -z $2 ] ; then
    DisplayHelp
elif [ -z $3 ] ; then
    DisplayHelp
else
    RunRestore S1 S2 S3
fi