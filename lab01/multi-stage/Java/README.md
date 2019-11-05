1. Compile Java jar file & build Quarkus JVM Docker image
```
./mvnw package
docker build -f src/main/docker/Dockerfile.jvm -t philipz/quarkus-jvm .
```

2. Compile native image & build Quarkus Native Docker image
```
./mvnw package -Pnative -Dquarkus.native.container-runtime=docker
docker build -f src/main/docker/Dockerfile.native -t philipz/quarkus-native .
```

3. Compile native image & build Quarkus Minimal Docker image
```
./mvnw package -Pnative -Dquarkus.native.container-runtime=docker
docker build -f src/main/docker/Dockerfile -t philipz/quarkus-minimal .
```
