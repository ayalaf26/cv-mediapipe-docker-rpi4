FROM balenalib/raspberry-pi-python:3.7.12-buster
#FROM balenalib/raspberrypi4-64-python:3.7-buster
#FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install -yq apt-utils
RUN apt-get update -y
RUN apt install -yq python3-dev 
RUN apt install -yq ffmpeg python3-opencv
RUN apt install -yq libxcb-shm0 libcdio-paranoia-dev libsdl2-2.0-0 libxv1  libtheora0 libva-drm2 libva-x11-2 libvdpau1 libharfbuzz0b libbluray2 libatlas-base-dev libgtk-3-0 libdc1394-22
RUN apt install -yq libhdf5-103 libopenexr23
RUN apt install -yq libcanberra-gtk-module libcanberra-gtk3-module
RUN apt-get install -yq xauth
RUN apt-get install -yq x11-apps
RUN adduser pi --gecos "RaspberryPi4" --disabled-password
RUN usermod -a -G video pi
USER pi
WORKDIR /home/pi
ENV PATH="/home/pi/.local/bin:${PATH}"
RUN pip install --upgrade pip
RUN pip install mediapipe-rpi4 --user
WORKDIR /app
COPY --chown=pi:pi . .
CMD ["./entry.sh"]
EXPOSE 8887