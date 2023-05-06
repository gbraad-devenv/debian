FROM --platform=linux/amd64 debian:bullseye

USER root

RUN apt-get update \
    && apt-get install -y \
        git \
        sudo \
        openssh-client \
        openssh-server \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    && sed -i.bkp -e '/Defaults\tuse_pty/d' -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers \
    && mkdir /workspace && chown -hR gitpod:gitpod /workspace

RUN curl -fsSL https://pkgs.tailscale.com/stable/debian/bullseye.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null \
    && curl -fsSL https://pkgs.tailscale.com/stable/debian/bullseye.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list \
    && sudo apt-get update \
    && sudo apt-get install -y \
        docker.io \
        tailscale \
        stow \
        zsh \
        screen \
        tmux \
        powerline \
        zssh \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/tailscaled /etc/init.d/tailscaled
RUN mkdir -p /var/run/tailscale /var/cache/tailscale /var/lib/tailscale

USER gitpod
