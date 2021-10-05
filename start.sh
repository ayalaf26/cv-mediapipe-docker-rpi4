#!/bin/bash
xauth list | head -n 1 > cookie.txt && sed -i 's/unix: /unix:0 /g' cookie.txt
#docker run -it --network=host -e DISPLAY -v /tmp/.X11-unix -v $(pwd):/app --privileged cv_cvs
docker-compose up