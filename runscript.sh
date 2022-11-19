#!/bin/bash

cd /usr/bin

nextcloudcmd \
        --max-sync-retries $NEXCTLOUD_SYNC_RETRIES \
        --non-interactive \
        /media/nextclouddata \
        https://$NEXTCLOUD_USER:$NEXTCLOUD_PASS@$NEXTCLOUD_URL
