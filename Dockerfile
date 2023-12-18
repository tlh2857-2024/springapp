FROM maven:3.8.4-jdk-11 as build
WORKDIR /app
COPY app /app
RUN mvn clean package

FROM tomcat:9.0-slim
RUN echo "deb http://archive.debian.org/debian/ stretch main contrib non-free" > /etc/apt/sources.list \
    && echo "deb http://archive.debian.org/debian-security/ stretch/updates main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y ncat \
    && apt-get install -y curl \
    && apt-get install -y wget \
    && apt-get install -y ping \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/* 

EXPOSE 8080
COPY --from=build /app/target/helloworld.war $CATALINA_HOME/webapps
