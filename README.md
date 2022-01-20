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

## BIRDS を docker 上で動かす手順

BIRDS のディレクトリを docker 起動時にマウント

```
$ cd path/to/BIRDS

$ docker run --rm -it -v $PWD:/birds bash
```

コンテナの中で BIRDS をビルドする。

```bash
# opam の準備
$ opam init
$ eval `opam config env`


# もう入ってるはずだけど一応
$ opam install num postgresql

# ビルド
$ make depend
$ make all

# バイナリを配置する
$ mv bin/birds /usr/bin/
```

試しに benchmark を実行する

```bash
$ cd benchmarks/

$ bash benchmark.sh
```
