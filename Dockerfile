FROM debian:wheezy
EXPOSE 6443 6080 6843
WORKDIR /usr/lib/mfi

RUN echo deb http://dl.ubnt.com/mfi/distros/deb/debian debian ubiquiti >> /etc/apt/sources.list &&\
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv C0A52C50 &&\
    apt-get update && apt-get upgrade -y && apt-get install -y mfi

CMD ["/usr/bin/java","-jar","/usr/lib/mfi/lib/ace.jar","start"]
