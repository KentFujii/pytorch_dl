#!/bin/bash

cd `dirname $0`

if [ -e ml-20m.zip ]
then
    echo "ok"
else
    wget http://files.grouplens.org/datasets/movielens/ml-20m.zip
fi
unzip ml-20m.zip
