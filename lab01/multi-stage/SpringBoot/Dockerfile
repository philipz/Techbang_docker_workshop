FROM adoptopenjdk:11-jdk-openj9 as builder
RUN mkdir -p /app/source
COPY . /app/source
WORKDIR /app/source
RUN ./mvnw clean package

FROM adoptopenjdk:11-jre-openj9
COPY --from=builder /app/source/target/*.jar /app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]
