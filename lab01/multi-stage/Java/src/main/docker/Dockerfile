FROM registry.access.redhat.com/ubi8/ubi-minimal as lddpackage
WORKDIR /work/
COPY copy_ldd.sh /work/
COPY target/*-runner /work/application
RUN chmod -R 775 /work && ./copy_ldd.sh application build

FROM scratch
COPY --from=lddpackage /work/build /
ENTRYPOINT ["/app/application","-Dquarkus.http.host=0.0.0.0"]
