#!/usr/bin/env bash
set -eu

CHOOSE_ROS_DISTRO=foxy

## additional install for the seminar
sudo apt-get update
sudo apt-get install -y terminator

## additional install for TurtleBot3 environment
## https://emanual.robotis.com/docs/en/platform/turtlebot3/quick-start/#pc-setup
# Install Gazebo11
sudo apt-get install -y ros-${CHOOSE_ROS_DISTRO}-gazebo-*
# Install Cartographer
sudo apt install -y ros-${CHOOSE_ROS_DISTRO}-cartographer
sudo apt install -y ros-${CHOOSE_ROS_DISTRO}-cartographer-ros
# Install Navigation2
sudo apt install -y ros-${CHOOSE_ROS_DISTRO}-navigation2
sudo apt install -y ros-${CHOOSE_ROS_DISTRO}-nav2-bringup
# Install TurtleBot3 Packages
sudo apt install -y ros-${CHOOSE_ROS_DISTRO}-dynamixel-sdk
sudo apt install -y ros-${CHOOSE_ROS_DISTRO}-turtlebot3-msgs
sudo apt install -y ros-${CHOOSE_ROS_DISTRO}-turtlebot3

set +u

grep -F "export ROS_LOCALHOST_ONLY=1" ~/.bashrc ||
echo "export ROS_LOCALHOST_ONLY=1" >> ~/.bashrc

grep -F "export TURTLEBOT3_MODEL=burger" ~/.bashrc ||
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc
