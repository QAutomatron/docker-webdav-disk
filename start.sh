#!/bin/bash

export WEBDAV_USER
export WEBDAV_PASSWORD
export WEBDAV_URL

echo "User is $WEBDAV_USER"
echo "Password is $WEBDAV_PASSWORD"
echo "URL is $WEBDAV_URL"

mkdir $HOME/.davfs2
echo "$WEBDAV_URL $WEBDAV_USER $WEBDAV_PASSWORD" >> $HOME/.davfs2/secrets
mkdir -p /mnt/cloud
mount.davfs $WEBDAV_URL /mnt/cloud
