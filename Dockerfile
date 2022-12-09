FROM ubuntu:22.10

# root
ADD install.sh /bin
RUN install.sh

RUN apt install language-pack-en -y
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

ENV SHELL /bin/bash

ADD run.sh /bin

ENV USER openbor
ENV PASS password

# openbor
RUN useradd $USER -d /home/$USER \
 && mkdir /home/$USER && chown $USER /home/$USER \
 && usermod -a -G root $USER \
 && usermod -a -G sudo $USER \
 && usermod -a -G audio $USER \
 && echo "$USER:$PASS" | chpasswd \
 && chmod g+w /etc/X11

COPY pulse-client.conf /etc/pulse/client.conf
COPY asound.conf /etc/asound.conf

USER $USER
WORKDIR /home/$USER

# alias/functions
ADD bashrc /home/$USER/.bashrc

# build
RUN curl -sL https://api.github.com/repos/DCurrent/openbor/releases/latest \
| jq -r '.assets[].browser_download_url' \
| xargs curl -L -o openbor.7z --url \
&& 7z x openbor.7z && ln -s OpenBOR* OpenBOR

EXPOSE 5900
ENV DISPLAY=:1.0

CMD run.sh

