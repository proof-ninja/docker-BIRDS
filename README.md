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

まず、 docker-BIRDS の dockerfile を修正する。

```dockerfile
# ENTRYPOINT ["/usr/bin/birds"]
ENTRYPOINT ["/bin/bash"]
```

そして docker build を行う

```bash
# とんでもない時間がかかるので注意
$ docker build -t birds .
```

その後、 BIRDS のディレクトリに移動して docker 起動時にマウント

```
$ cd path/to/BIRDS

$ docker run --rm -it -v $PWD:/birds birds
```

BIRDS をビルドする。

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
