# docker-fping

[![Latest Github release](https://img.shields.io/github/release/rugarci/docker-fping.svg)](https://github.com/rugarci/docker-fping/releases/latest)
[![Image size](https://img.shields.io/docker/image-size/rugarci/fping/latest)](https://hub.docker.com/r/rugarci/fping)
[![Docker Pulls](https://img.shields.io/docker/pulls/rugarci/fping.svg)](https://hub.docker.com/r/rugarci/fping)

fping Docker image.

Built on Alpine

Tested on Raspberry Pi 4

## Usage

```yaml
  fping:
    image: rugarci/fping:1.0.0
    entrypoint: sh -c "while true; do fping -q -s -g $(ip addr list eth0 |grep 'inet ' |cut -d' ' -f6|cut -d/ -f1)/24; sleep 60; done"
    container_name: fping
    network_mode: host
    restart: always
```