FROM --platform=linux/amd64 debian:bullseye

USER root

RUN apt-get update && apt-get install -y \
    git \
    sudo \
    openssh-client \
    openssh-server \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    && sed -i.bkp -e '/Defaults\tuse_pty/d' -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers \
    && mkdir /workspace && chown -hR gitpod:gitpod /workspace

USER gitpod
