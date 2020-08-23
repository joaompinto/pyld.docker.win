FROM centos:7

RUN yum install -y openssh-server initscripts
RUN useradd developer
RUN echo "developer:dev" | chpasswd

COPY etc/ etc/

# Reinstall docs
RUN sed -i '/tsflags=nodocs/d' /etc/yum.conf
RUN \
     yum -y reinstall $(</etc/missing-docs) && \
     yum -y install $(</etc/extra-packages) && \
     yum clean all

RUN rm /etc/extra-packages /etc/missing-docs

ENTRYPOINT /etc/entrypoint.sh

EXPOSE 22
