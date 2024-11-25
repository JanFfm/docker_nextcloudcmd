#!/bin/bash

cd /usr/bin

for path in $PATHES

do
        echo "starte $path"
        nextcloudcmd -u $NEXTCLOUD_USER -p $NEXTCLOUD_PASS --path $path/ $SOURCE_DIR $NEXTCLOUD_URL 
done
       
