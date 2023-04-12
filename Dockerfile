# basic dockerfile for ML development
# uses pytorch/pytorch as base
# linux packages: ssh, rsync, inotifywait
# python packages: see requirements.txt

FROM pytorch/pytorch:latest
# based on ubuntu 18.04

# install linux packages
RUN apt-get update && apt-get install -y \
    openssh-server \
    rsync \
    inotify-tools

# install python packages
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt