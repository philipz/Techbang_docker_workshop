1. Register Arm executables to run on x64 machines

`docker run --rm --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d`

2. Check register status

`cat /proc/sys/fs/binfmt_misc/qemu-aarch64`

3. Create a multi-architecture build instance

```
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx inspect --bootstrap

```

4. Docker buildx build

```
docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t philipz/hello . --push
docker buildx imagetools inspect philipz/hello
```

5. Docker run each platform image

```
docker run docker.io/philipz/hello:latest@sha256:7b39d323b2b3418d73b0a0759f9d923704eed31fbc8bc9ca0b032d708ff3c0ea
docker run docker.io/philipz/hello:latest@sha256:701769332fc469d507b3f8e6de7f6ec64e1ff27fc0fb57563d185295f45ffb38
docker run docker.io/philipz/hello:latest@sha256:aaa88a07b0de79ff5f37dc7e396069c7312486c693b8365bf550dc0a2f3a9810
```
