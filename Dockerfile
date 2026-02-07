FROM ubuntu:24.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y build-essential libncurses-dev bison flex libssl-dev libelf-dev bc dwarves kmod e2fsprogs jfsutils xfsprogs squashfs-tools btrfs-progs quota python3 python3-sphinx tar gawk git bash rsync debhelper libdw-dev
