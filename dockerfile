FROM ubuntu:16.04

MAINTAINER Kent Fujii <kent.where.the.light.is@gmail.com>

ENV LANG C.UTF-8

RUN apt-get update \
    && apt-get install -y \
       python3.5 \
        python3-pip \
        python3-dev \
        python3-setuptools \
        gcc \
        make \
        openssl \
        libssl-dev \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        curl \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

COPY . /var/www/pytorch_tutorials
WORKDIR /var/www/pytorch_tutorials
VOLUME /var/www/pytorch_tutorials

RUN pip3 install --upgrade pip \
    && pip3 install -r requirements.txt \
    && pip3 install http://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl \
    && pip3 install torchvision

EXPOSE 8888
