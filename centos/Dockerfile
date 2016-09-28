FROM centos:7

COPY gosu /usr/bin/

RUN chmod 4755 /usr/bin/gosu
RUN useradd -s /bin/bash demo
RUN rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm
RUN yum -y update && yum -y install epel-release && yum -y install \
    tcpdump \
    vlc-nox

USER demo
CMD ["/bin/bash"]
