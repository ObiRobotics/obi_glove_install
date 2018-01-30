#!/bin/bash

# Don't forget: xhost +
#xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $containerId`
# export LIBGL_ALWAYS_SOFTWARE=1
# export LIBGL_ALWAYS_INDIRECT=1
#192.168.0.9:0
#xhost +
#DISPLAY_IP=192.168.0.9

# --device="/dev/video1:/dev/video1" \
# --device="/dev/video2:/dev/video2" \
#=${DISPLAY_IP}:0
docker run -it \
       --env="DISPLAY" \
       --env="QT_X11_NO_MITSHM=1" \
       --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
       --workdir="/home/Projects/" \
       --volume="${HOME}/Projects/:/home/Projects" \
       ubuntu:14.04.4 \
       bash
# /bin/bash -c "while true; do ping 8.8.8.8; done"
# xhost -
# --volume="/Users/ermanoarruda/Movies:/home/Movies" \
# --volume="path-in-my-computer:path-in-docker"
# --device="/dev/ttyACM0:/dev/ttyACM0" \
