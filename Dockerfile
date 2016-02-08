FROM debian:wheezy

RUN echo deb http://dl.ubnt.com/mfi/distros/deb/debian debian ubiquiti >> /etc/apt/sources.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv C0A52C50

RUN apt-get update && apt-get install -y mfi

WORKDIR /usr/lib/mfi

EXPOSE 6443

CMD ["java -jar lib/ace.jar start"]
