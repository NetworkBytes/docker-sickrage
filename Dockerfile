# SickRage # 
# Version 1.0 
FROM centos:latest 
MAINTAINER John Bencic

VOLUME /Drop
VOLUME /config
VOLUME /TV /Downloads

RUN    yum update -y \
    && yum install -y epel-release git\
    && yum clean all \
    && git clone https://github.com/SickRage/SickRage.git /SickRage 


EXPOSE 8081

ENTRYPOINT ["python"]
CMD ["/SickRage/SickBeard.py", "--datadir", "/config"]

