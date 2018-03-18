#!/bin/bash

cd `dirname $0`

if [ -e lfw-deepfunneled.tgz ]
then
    echo "ok"
else
    wget http://vis-www.cs.umass.edu/lfw/lfw-deepfunneled.tgz
fi

tar -zxvf lfw-deepfunneled.tgz
mkdir lfw-deepfunneled/train
mv lfw-deepfunneled/[A-W]* lfw-deepfunneled/train/
mkdir lfw-deepfunneled/test
mv lfw-deepfunneled/[X-Z]* lfw-deepfunneled/test/
