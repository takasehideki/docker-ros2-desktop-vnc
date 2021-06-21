#!/usr/bin/env bash
set -eu

CHOOSE_ROS_DISTRO=foxy

# additional install for the seminar
sudo apt-get update
sudo apt-get install -y terminator
sudo apt-get install -y ros-${CHOOSE_ROS_DISTRO}-gazebo-ros-pkgs

set +u

source /opt/ros/${CHOOSE_ROS_DISTRO}/setup.bash

grep -F "export ROS_LOCALHOST_ONLY=1" ~/.bashrc ||
echo "export ROS_LOCALHOST_ONLY=1" >> ~/.bashrc
