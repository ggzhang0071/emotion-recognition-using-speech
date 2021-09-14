img="nvcr.io/nvidia/tensorflow:21.02-tf2-py3"

#img="padim:0.1"

docker run --privileged=true --gpus  all  --workdir /git --name "ems"  -e DISPLAY --ipc=host -d --rm  -p 2233:4452  \
-v /home/gegezhang/emotion-recognition-using-speech:/git/emotion-recognition-using-speech \
-v /home/gegezhang/datasets:/home/gegezhang/datasets \
$img sleep infinity


docker exec -it  ser  /bin/bash

pip list | grep "tensorflow"
