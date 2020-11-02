##### ################################################################
#####
#####    Build
#####    -----
#####      docker build -t rwt.api -f Dockerfile .
#####
#####    Run
#####    ---
#####      docker run  -it rwt.api
#####      docker run  -d  rwt.api
#####      docker exec -it {id} /bin/bash
#####
##### ################################################################
FROM ubuntu:18.04

MAINTAINER Renshi <yanqirenshi@gmail.com>


##### ################################################################
#####  Install of zypper
##### ################################################################
USER root

RUN apt -y update
RUN apt -y upgrade

RUN apt -y install sudo curl wget git libev-dev


##### ################################################################
#####   roswell
##### ################################################################
USER root
WORKDIR /tmp

RUN apt -y install git build-essential automake libcurl4-openssl-dev

RUN curl -L https://github.com/roswell/roswell/releases/download/v19.08.10.101/roswell_19.08.10.101-1_amd64.deb --output roswell.deb

RUN dpkg -i roswell.deb


##### ################################################################
#####   Group / User
##### ################################################################
USER root

RUN groupadd appl-users
RUN useradd -d /home/appl-user -m -g appl-users appl-user


##### ################################################################
#####   roswell
##### ################################################################
USER appl-user
WORKDIR /home/appl-user

RUN ros setup

RUN ros install woo


##### ################################################################
#####   setting rwt.api
##### ################################################################
USER appl-user
WORKDIR /home/appl-user

RUN mkdir -p /home/appl-user/prj/rwt.api

COPY ./rwt.ros /home/appl-user/prj/rwt.api/rwt.ros


##### ################################################################
#####   rwt.api
##### ################################################################
USER appl-user
WORKDIR /home/appl-user/tmp

EXPOSE 8080

CMD ["/usr/bin/ros", "/home/appl-user/prj/rwt.api/rwt.ros"]
