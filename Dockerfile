FROM ubuntu:14.04

MAINTAINER joaniznardo (github)

RUN apt-get update && apt-get install -y debconf-utils openssh-server sudo tcpdump inotify-tools dnsutils supervisor
RUN useradd -m ubuntu && echo "ubuntu:ubuntu" | chpasswd && adduser ubuntu sudo

CMD /etc/init.d/ssh restart && supervisord -n
