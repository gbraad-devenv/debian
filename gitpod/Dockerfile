FROM --platform=linux/amd64 ghcr.io/gbraad-devenv/debian/base:bookworm

USER root

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    && mkdir /workspace && chown -hR gitpod:gitpod /workspace

RUN sudo apt-get update \
    && sudo apt-get install -y \
        docker.io \
    && rm -rf /var/lib/apt/lists/*

USER gitpod
