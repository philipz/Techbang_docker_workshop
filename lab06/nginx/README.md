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
docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t philipz/nginx-cathay . --push
docker buildx imagetools inspect philipz/nginx-cathay
```

5. Docker run each platform image

```
docker run -d -p 80:80 docker.io/philipz/nginx-cathay
```
