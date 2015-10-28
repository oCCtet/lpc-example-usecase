FROM centos:7

RUN rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm
RUN yum -y update && yum install epel-release && yum -y install \
    tcpdump \
    vlc-nox

CMD ["/bin/bash"]
