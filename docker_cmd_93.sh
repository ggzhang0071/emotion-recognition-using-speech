
#img="tensorflow/tensorflow:2.4.0-gpu"
img="nvcr.io/nvidia/tensorflow:21.02-tf2-py3"

#img="padim:0.1"

docker run --privileged=true  --workdir /git --name "ser"  -e DISPLAY --ipc=host -d --rm  -p 2233:4452  \
-v /raid/git/emotion-recognition-using-speech:/git/emotion-recognition-using-speech \
-v /raid/git/datasets:/git/datasets \
$img sleep infinity

docker exec -it  ser  /bin/bash

pip list | grep "tensorflow"