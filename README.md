# OpenBOR-linux


# Requirements

* docker

# Build & Make

```
docker build . -t openbor-linux
docker run -ti -v $(pwd)/shared:/shared openbor-linux
```

ELF Generated file

```
file shared/OpenBOR/OpenBOR
```

```
shared/OpenBOR/OpenBOR: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=1712d2f64eca30dd92ed4e58112502199c4985b9, stripped
```


# Download Demo

```
docker run -ti -v $(pwd)/shared:/shared openbor-linux
download-demo
exit
```

# Play

Outside of container

```
cd $(pwd)/shared/OpenBOR
./OpenBOR
```

![](doc/openbor.png)

![](doc/start.png)

![](doc/playing.png)


Troubleshoot

```
./OpenBOR: error while loading shared libraries: libvpx.so.5: cannot open shared object file: No such file or directory
```
Solution
```
sudo ln -s /usr/lib/x86_64-linux-gnu/libvpx.so.6 /usr/lib/x86_64-linux-gnu/libvpx.so.5
```


# References

* [OpenBOR repository](https://github.com/DCurrent/openbor)

* [Retro Gamer Advanture](http://www.zvitor.com.br/projeto/rga.html)
