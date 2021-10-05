# cv-mediapipe-docker-rpi4
Enabling computer vision processing with mediapipe on Docker and Raspberry Pi 4.

## Why I do this?
The main idea is to enable computer vision (cv) on a stand-alone device, taking advantage of python libraries. The Raspberry Pi 4 (rpi4) device is a reliable option that meets these requirements. Nevertheless, OS packages required for cv python libraries could make the OS and python environment unstable. In some cases, OS packages and python libraries maintain a hard relationship and it could be a big problem if you use your device for more applications. As a solution, Docker container technology provides an easy way to handle different environments.

## What are the challenges?
- mediapipe and other Python libraries have very specific requirements for OS packages. It means we need to select the base image and OS packages carefully.
- cv processing requires access to the camera for image/video acquisition and an xserver for result presentation. It means we need to handle special premissions to the user who runs the python script, enable special privileges for the docker container and enable a secure way for xserver.

## Pre-requisites (comming soon)
- rpi4 OS full upgrade
- install docker
- xauth list validation
