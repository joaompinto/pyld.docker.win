FROM centos:7

RUN yum install -y openssh-server initscripts
RUN useradd developer
COPY tmp/authorized_keys /etc
COPY scripts/entrypoint.sh /

RUN yum install -y python3
ENTRYPOINT /entrypoint.sh

EXPOSE 22
