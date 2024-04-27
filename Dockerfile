FROM archlinux/archlinux:latest

RUN pacman -Sy && \
    pacman -S --noconfirm pandoc-cli texlive-meta python-pygments texlive-langspanish texlive-langenglish inkscape

WORKDIR /workdir
ENTRYPOINT /bin/bash