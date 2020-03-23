# tinyfilemanager-docker

[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/tigerdockermediocore/tinyfilemanager-docker)](https://hub.docker.com/r/tigerdockermediocore/tinyfilemanager-docker) [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/tigerdockermediocore/tinyfilemanager-docker)](https://hub.docker.com/r/tigerdockermediocore/tinyfilemanager-docker)

**Simplest dockerized version of [tinyfilemanager](https://tinyfilemanager.github.io)**


Run by mounting desired directories into /data and target port is 80.

Say we want to mount directory /something/useful, and use port 8080.

`
docker run -d -v /something/useful:/data -p 8080:80 tigerdockermediocore/tinyfilemanager-docker:latest
`
