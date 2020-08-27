FROM ros:foxy-ros-base-focal

# Install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

# Use current configuration
RUN apt-get update && apt-get install zsh -y
RUN PATH="$PATH:/usr/bin/zsh"