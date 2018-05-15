FROM ubuntu:18.04

# root
RUN apt update && apt install binutils libsdl2-dev libsdl2-gfx-dev libvpx-dev libpng-dev libvorbis-dev curl unrar -y

RUN apt install language-pack-en -y
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

ADD run.sh /bin
ADD demo.sh /bin

# openbor
RUN useradd openbor -d /home/openbor
RUN mkdir /home/openbor && chown openbor /home/openbor

USER openbor
WORKDIR /home/openbor

ADD build.sh .

RUN bash build.sh

CMD ["run.sh"]