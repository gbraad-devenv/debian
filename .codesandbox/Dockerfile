FROM  --platform=linux/amd64 ghcr.io/gbraad-devenv/debian/base:bullseye

USER gbraad

RUN git clone https://github.com/gbraad/dotfiles ~/.dotfiles \
    && ~/.dotfiles/install.sh
