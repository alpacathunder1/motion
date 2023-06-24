#!/bin/bash
docker build -t motion .
docker stop motion
docker rm motion
mkdir config &> /dev/null
docker run -d --device=/dev/video0:/dev/video0 --network=docker_belphegornet --name=motion -u 1000:044 -v "$(pwd)"/config:/config:ro -v motion
