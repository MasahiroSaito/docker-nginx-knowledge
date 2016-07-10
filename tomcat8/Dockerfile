FROM centos:7
MAINTAINER Masahiro Saito

RUN yum install -y wget
RUN yum install -y java-1.7.0-openjdk
RUN wget http://ftp.kddilabs.jp/infosystems/apache/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz
RUN tar -xzvf apache-tomcat-8.0.36.tar.gz
RUN rm -rf apache-tomcat-8.0.36.tar.gz
RUN echo 'JRE_HOME=/usr/java/default' >> /etc/profile \
    && echo 'CATALINA_HOME=/usr/local/tomcat' >> /etc/profile \
    && echo 'export JRE_HOME CATALINA_HOME' >> /etc/profile

#CMD apache-tomcat-8.0.36/bin/startup.sh && /bin/bash
CMD service tomcat8 start