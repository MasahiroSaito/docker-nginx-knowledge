FROM centos:centos6
MAINTAINER Masahiro Saito

RUN yum -y install yum-plugin-priorities
RUN rpm -Uvh http://mirrors.dotsrc.org/jpackage/6.0/generic/free/RPMS/jpackage-release-6-3.jpp6.noarch.rpm
RUN yum -y --nogpgcheck install tomcat6 tomcat6-webapps tomcat6-admin-webapps java-1.7.0-openjdk

EXPOSE 8080

CMD /etc/init.d/tomcat6 start && /bin/bash