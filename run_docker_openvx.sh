#!/bin/bash

sudo docker run -w /home/root --runtime=nvidia --gpus all -it --shm-size=4096m --name openvx_docker --mount source=$(pwd),target=/home/root,type=bind mmdet_cuda_118_ubuntu22_gpu
