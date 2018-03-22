#!/bin/bash

cd `dirname $0`

if [ -e 102flowers.tgz ]
then
    echo "ok"
else
    wget http://www.robots.ox.ac.uk/~vgg/data/flowers/102/102flowers.tgz
fi

tar -zxvf 102flowers.tgz
mkdir oxford-102/
mkdir oxford-102-gen/
mv jpg/ oxford-102/
