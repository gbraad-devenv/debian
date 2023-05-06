FROM --platform=linux/amd64 ghcr.io/gbraad-devenv/debian/base:bullseye

USER root

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    && sed -i.bkp -e '/Defaults\tuse_pty/d' -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers \
    && mkdir /workspace && chown -hR gitpod:gitpod /workspace

USER gitpod
