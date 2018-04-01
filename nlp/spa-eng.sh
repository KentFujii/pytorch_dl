#!/bin/bash

cd `dirname $0`

if [ -e spa.txt ]
then
    echo "ok"
else
  wget http://www.manythings.org/anki/spa-eng.zip
  unzip spa-eng.zip spa.txt
fi


