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

!()[doc/openbor.png]
