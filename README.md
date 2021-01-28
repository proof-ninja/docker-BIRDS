# docker-BIRDS

The dockerfile for BIRDS development.

### How to build

```bash
$ docker build -t birds .
```

### How to run

```bash
$ ls
xxx.dl

$ docker run --rm -v $PWD:/birds birds -f xxx.dl
```