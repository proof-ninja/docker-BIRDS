# docker-BIRDS

The dockerfile for BIRDS development.

### How to build

```bash
$ docker build -t birds .
```

### How to run benchmark

```bash
$ docker run --rm -it birds /bin/bash

$ cd benchmarks

$ bash benchmark.sh
```