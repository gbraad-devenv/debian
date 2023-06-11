FROM  --platform=linux/amd64 ghcr.io/gbraad-devenv/debian/base:bookworm

USER gbraad

RUN git clone https://github.com/gbraad/dotfiles ~/.dotfiles \
    && ~/.dotfiles/install.sh
