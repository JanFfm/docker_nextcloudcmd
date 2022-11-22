# docker_nextcloudcmd

A Nextcloud commandline client based on ubuntu:jammy. 
The nextcloudcmd client performs single sync run and then exits. 

I suggest creating a bash script to start the container. 
The bash script can then be started via cronjob.


## start container
    docker run -it --rm \

        --name nextcloudcmd \
        -e NEXTCLOUD_USER=user \
        -e NEXTCLOUD_PASS=password \
        -e NEXTCLOUD_URL=example.com \
        -e NEXCTLOUD_SYNC_RETRIES=4 \
        -v /your/path/here:/media/nextclouddata \
        nikreitmann/nextcloudcmd:latest


## build image
    git clone https://github.com/nikreitmann/docker_nextcloudcmd.git
    cd docker_nextcloudcmd/
    docker build -t nextcloudcmd:latest .
