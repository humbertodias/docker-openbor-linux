#!/bin/bash

SPICE_PASSWD=${SPICE_PASSWD:-"password"}
sed -i "s|#Option \"SpicePassword\" \"\"|Option \"SpicePassword\" \"$SPICE_PASSWD\"|" /etc/X11/spiceqxl.xorg.conf
unset SPICE_PASSWD

sed -i "s/allowed_users=console/allowed_users=anybody/g" /etc/X11/Xwrapper.config

source /home/openbor/.bashrc && download-demo

DISPLAY=:1.0
Xspice --port 5900 --disable-ticketing $DISPLAY