#!/bin/bash

script_dir=$(dirname -- ${BASH_SOURCE[0]})


sudo docker build --build-arg REPO_LOCATION= --build-arg PROXY=  -f $script_dir/Dockerfile_GPU -t mmdet_cuda_118_ubuntu22_gpu .
