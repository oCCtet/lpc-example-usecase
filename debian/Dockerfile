FROM debian:jessie

COPY gosu /usr/bin/

RUN chmod 4755 /usr/bin/gosu
RUN useradd -s /bin/bash demo && chpasswd demo:demo
RUN apt-get update && apt-get install -y \
    opencaster \
    ssmping \
    tcpdump \
    tstools \
    vlc-nox

USER demo
CMD ["/bin/bash"]
