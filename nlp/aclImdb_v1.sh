#!/bin/bash

cd `dirname $0`

if [ -e aclImdb_v1.tar.gz ]
then
    echo "ok"
else
    wget http://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz
fi

tar -zxvf aclImdb_v1.tar.gz
