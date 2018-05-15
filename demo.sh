#!/bin/bash

curl -LOk http://www.zvitor.com.br/Downloads/RGAv103.rar
unrar e RGAv103.rar i "*RGA.pak"
mv RGA.pak /shared/OpenBOR/Paks
