FROM ubuntu:20.04

# prevent tzdata from asking for timezone
ARG DEBIAN_FRONTEND=noninteractive

# change apt source
RUN sed -i 's@archive.ubuntu.com@mirror.kakao.com@g' /etc/apt/sources.list

# install package for fuzzing
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    clang \
    make \
    cmake \
    python3 \
    python3-pip \
    csmith \
    libcsmith-dev \
    creduce

RUN pip3 install tqdm

# install rustup
# if there is any problem with the following command, please refer to https://rustup.rs/
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

WORKDIR /home/kecc

