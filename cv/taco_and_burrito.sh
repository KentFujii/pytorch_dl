#!/bin/bash

cd `dirname $0`

if [ -e taco_and_burrito.tar.gz ]
then
    echo "ok"
else
    wget https://github.com/lucidfrontier45/PyTorch-Book/raw/master/data/taco_and_burrito.tar.gz
fi

tar -zxvf taco_and_burrito.tar.gz
