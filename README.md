# docker_nextcloudcmd

A Nextcloud commandline client based on ubuntu:jammy. The nextcloudcmd client performs single sync run and then exits. For scheduled syncing you have to configure a cronjob on your host.

docker run -it --rm \

    --name nextcloudcmd
    -e NEXTCLOUD_USER=user
    -e NEXTCLOUD_PASS=password
    -e NEXTCLOUD_URL=example.com
    -e NEXCTLOUD_SYNC_RETRIES=4
    -v /your/path/here:/media/nextclouddata
    nikreitmann/nextcloudcmd:latest
