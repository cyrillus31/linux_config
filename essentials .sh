#!/bin/sh

# packages
sudo yum install gcc openssl-devel bzip2-devel libffi-devel zlib-devel

# python3.9.1
wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz
tar xzf Python-3.9.1.tgz
cd Python-3.9.1
./configure --enable-optimizations
make altinstall
python3.9 -V 

# pipreqs to generate requirements.txt
pip install pipreqs

