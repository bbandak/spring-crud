FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /home/vfnet/users/bbandak/booster-crud-spring-boot/target/booster-crud-spring-boot-1.0.0-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
