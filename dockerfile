# Specify the parent os image
FROM ubuntu:jammy

# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

# copy runscript
COPY runscript.sh /usr/bin/runscript.sh
RUN chmod +x /usr/bin/runscript.sh

# install packages
RUN apt-get install -y nextcloud-desktop-cmd
RUN mkdir /media/nextclouddata

# Set ENV variables
ENV NEXTCLOUD_USER=user
ENV NEXTCLOUD_PASS=password
ENV NEXTCLOUD_URL=
ENV NEXCTLOUD_SYNC_RETRIES=4

# start runscript
CMD ["/usr/bin/runscript.sh"]

