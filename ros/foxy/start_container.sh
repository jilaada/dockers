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
    --net=host \
    -v "/etc/group:/etc/group:ro" \
    -v "/etc/passwd:/etc/passwd:ro" \
    -v "/etc/shadow:/etc/shadow:ro" \
    -v "$HOME_DIR/github:$HOME_DIR/github" \
    -v "$HOME_DIR/data:$HOME_DIR/data" \
    -v "$HOME_DIR/.zsh:$HOME_DIR/.zsh" \
    -v "$HOME_DIR/.zshenv:$HOME_DIR/.zshenv" \
    -v "$HOME_DIR/.tmux.conf:$HOME_DIR/.tmux.conf" \
    $CONTAINER_NAME:$CONTAINER_TAG /bin/zsh
