FROM ubuntu:20.10

# root
RUN apt update && apt install binutils libsdl2-dev libsdl2-gfx-dev libvpx-dev libpng-dev libvorbis-dev curl unrar jq p7zip-full -y

RUN apt install language-pack-en -y
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

ENV SHELL /bin/bash

# openbor
RUN useradd openbor -d /home/openbor \
 && mkdir /home/openbor && chown openbor /home/openbor

USER openbor
WORKDIR /home/openbor

# alias/functions
ADD bashrc /home/openbor/.bashrc

# build
RUN curl -sL https://api.github.com/repos/DCurrent/openbor/releases/latest \
| jq -r '.assets[].browser_download_url' \
| xargs curl -L -o openbor.7z --url \
&& 7z x openbor.7z && ln -s OpenBOR* OpenBOR