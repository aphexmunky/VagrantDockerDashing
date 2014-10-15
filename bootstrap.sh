#! /usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c "echo deb https://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"
apt-get update
apt-get install -y lxc-docker git vim
docker run -d -p 8080:3030 -v=/vagrant/data/dashing/config:/config -v=/vagrant/data/dashing/dashboards:/dashboards -v=/vagrant/data/dashing/jobs:/jobs -v=/vagrant/data/dashing/public:/public -v=/vagrant/data/dashing/widgets:/widgets frvi/dashing