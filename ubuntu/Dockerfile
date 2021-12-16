FROM ubuntu:20.04

RUN apt update && \
    apt install -y sudo openssh-server openssh-client cron \
    iproute2 curl iputils-ping zip unzip nano tree telnet apache2-utils && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ubuntu
RUN echo 'ubuntu:Test@123' | chpasswd
RUN service ssh start

EXPOSE 22

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

#CMD ["/usr/sbin/sshd","-D"]
ENTRYPOINT /entrypoint.sh
