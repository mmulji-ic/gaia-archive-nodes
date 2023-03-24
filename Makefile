#!/usr/bin/make -f

DOCKER := $(shell which docker)


# Download large data files
download-data: 
	wget -O - https://dl2.quicksync.io/cosmoshub-1-archive.tar.lz4 | lz4 -d | tar -xvf -
	wget -O - https://dl2.quicksync.io/cosmoshub-2-archive.tar.lz4 | lz4 -d | tar -xvf -
	wget -O - https://dl2.quicksync.io/cosmoshub-3-archive.20210221.0903.tar.lz4 | lz4 -d | tar -xvf -
	wget -O - https://dl2.quicksync.io/https://dl2.quicksync.io/cosmoshub-4-archive.20230317.1010.tar.lz4 | lz4 -d | tar -xvf -

build-docker-images:

start-archive-nodes:


