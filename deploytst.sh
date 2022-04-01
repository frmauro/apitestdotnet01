#!/bin/bash
########################################################

## Shell Script to Build Docker Image and run.   

########################################################


# result=$( sudo docker images -q apitest01 )
# if [[ -n "$result" ]]; then
# echo "image exists"
# sudo docker rmi -f apitest01
# else
# echo "No such image"
# fi

# echo "build the docker image"

# echo "built docker images and proceeding to delete existing container"
# result=$( docker ps -q -f name=apitest01 )
# if [[ $? -eq 0 ]]; then
# echo "Container exists"
# sudo docker container rm -f apitest01
# echo "Deleted the existing docker container"
# else
# echo "No such container"
# fi

sudo docker build -t apitest01 .

echo "built docker images and proceeding to delete existing container"

echo "Deploying the updated container"

#sudo docker run -d -p 5272:5272 --name apitest01  apitest01

echo "Deploying the container"