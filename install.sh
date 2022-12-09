# install
apt update \
&& DEBIAN_FRONTEND=noninteractive apt install binutils libsdl2-dev libsdl2-gfx-dev libvpx-dev libpng-dev libvorbis-dev curl unrar jq p7zip-full sudo xserver-xorg xserver-xspice pulseaudio xterm libfuse2 -y

# fix
ln -s /usr/lib/x86_64-linux-gnu/libvpx.so /usr/lib/x86_64-linux-gnu/libvpx.so.5
