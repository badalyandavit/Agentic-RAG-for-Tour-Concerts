#!/bin/bash

# Install poppler-utils
apt update
apt install nvtop

pip install -r reqs.txt

export PYTORCH_CUDA_ALLOC_CONF="max_split_size_mb:4000"

nohup python app.py > nohup.out &
echo $! > save_pid.txt
