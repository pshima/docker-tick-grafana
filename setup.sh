#!/bin/bash
sudo apt-get update
sudo apt-get install git
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo apt-get install -y uidmap
dockerd-rootless-setuptool.sh install
sudo usermod -aG docker admin
sudo apt-get install python3-pip

echo "export PATH=/usr/bin:$PATH" >> ~/.bashrc
echo "export DOCKER_HOST=unix:///run/user/1000/docker.sock" >> ~/.bashrc
