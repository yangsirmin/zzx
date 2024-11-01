FROM maven:3.6.3-jdk-11-slim AS build

RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone

WORKDIR /app
COPY pom.xml .
COPY src ./src

RUN mvn package -DskipTests

CMD ["java", "-jar", "app/target/zzx-backend-0.0.1-SNAPSHOT.jar","--spring.profiles.active=prod"]