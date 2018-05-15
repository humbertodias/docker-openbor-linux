# OpenBOR-linux


# Build

```
docker build . -t openbor-linux
```

# Run

```
docker run -ti -v $(pwd)/shared:/shared openbor-linux
```

# Demo

```
docker run -ti -v $(pwd)/shared:/shared openbor-linux demo.sh
```

# Play

```
cd $(pwd)/shared/OpenBOR
./OpenBOR
```

![](doc/openbor.png)


# References

* [OpeBOR repository](https://github.com/DCurrent/openbor)

* [Retro Gamer Advanture](http://www.zvitor.com.br/projeto/rga.html)
