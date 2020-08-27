#!/bin/bash

# Environment variables
HOSTNAME="ros_foxy"
HOME_DIR="/home/$USER"

#Container specifics
CONTAINER_NAME="ros"
CONTAINER_TAG="foxy"

docker run -it \
    --user $UID:$GID \
    --hostname $HOSTNAME \
    --workdir=$HOME_DIR \
    -v "/etc/group:/etc/group:ro" \
    -v "/etc/passwd:/etc/passwd:ro" \
    -v"/etc/shadow:/etc/shadow:ro" \
    -v "/home/$USER:/home/$USER" \
    $CONTAINER_NAME:$CONTAINER_TAG /bin/zsh