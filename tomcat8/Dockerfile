FROM ubuntu
MAINTAINER Masahiro Saito

RUN apt-get update -y \
    && apt-get install -y \
        openjdk-8-jdk \
        curl
RUN curl -O http://ftp.kddilabs.jp/infosystems/apache/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz
RUN tar xzvf apache-tomcat-8.0.36.tar.gz \
    && rm -rf apache-tomcat-8.0.36.tar.gz \
    && mv apache-tomcat-8.0.36 /usr/tomcat8
RUN useradd -M -d /usr/tomcat8 tomcat8 \
    && chown -R tomcat8. /usr/tomcat8

EXPOSE 8080

CMD su - tomcat8 -c /usr/tomcat8/bin/startup.sh && /bin/bash
