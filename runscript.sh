#!/bin/bash

cd /usr/bin

for path in $PATHES

do
        echo "starte $path"
        nextcloudcmd -u $USER-p $PASSWD --path $path/   $SOURCE $DESTINATION 
done
       
