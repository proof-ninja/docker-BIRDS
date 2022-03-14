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

## 手元の BIRDS コードで benchmark を実行する方法

BIRDSのソースコードを入手
```console
$ git clone git@github.com:proof-ninja/BIRDS.git
$ cd BIRDS/
```

Dockerhub から imageを pull
```console
$ docker pull proofninja/birds-cui:v1
```

Dockerによるbenchmarkの実行
```console
$ docker run --rm -it -v $PWD:/birds proofninja/birds-cui:v1 bash
> cd /birds
> opam init
> eval `opam config env`
> make all
> make install
> cd benchmark
> bash benchmark.sh
```
