# Docker container with webdav mount

You can mount your webdav cloud disk inside container.

### How to run:

```
docker run -d \
-e WEBDAV_USER=<your-login> \
-e WEBDAV_PASSWORD=<your-password> \
-e WEBDAV_URL=<https://cloud-webdav-url> \
--name webdav \
--privileged \
--cap-add=ALL \
-v /dev:/dev  \
-v /lib/modules:/lib/modules \
qautomatron/docker-webdav-disk
```

Set `WEBDAV_USER` to user login.  
Set `WEBDAV_PASSWORD` to user password.  
Set `WEBDAV_URL` to your webdav url.
