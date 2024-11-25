#!/bin/bash

docker run -i --rm \
        --name nextcloudcmd \
        -e NEXTCLOUD_USER=your-user-here \
        -e NEXTCLOUD_PASS=your-password-here \
        -e NEXTCLOUD_URL=your-nextcloud-url-here \
        -e NEXCTLOUD_SYNC_RETRIES=4 \
        -e PATH=your-path \ 
        -v /your/path/to/sync/here:/media/nextclouddata
        nikreitmann/nextcloudcmd:latest
