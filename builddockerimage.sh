#!/bin/bash
echo "build the docker image"

sudo docker build -t apitest01 .

echo "built docker images and proceeding to delete existing container"

sudo docker run -d -p 5272:5272 --name apitest01  apitest01

echo "Deploying the container"