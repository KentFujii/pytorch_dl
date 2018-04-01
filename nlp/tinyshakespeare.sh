#!/bin/bash

cd `dirname $0`

if [ -e tinyshakespeare.txt ]
then
    echo "ok"
else
    curl https://raw.githubusercontent.com/karpathy/char-rnn/master/data/tinyshakespeare/input.txt > tinyshakespeare.txt
fi
