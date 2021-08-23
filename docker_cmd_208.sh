img="nvcr.io/nvidia/tensorflow:20.06-tf2-py3"
#img="padim:0.1"

docker run --privileged=true --gpus  all  --workdir /git --name "ems"  -e DISPLAY --ipc=host -d --rm  -p 2233:4452  \
-v /home/gegezhang/stanford-stages:/git/stanford_stages $img sleep infinity

