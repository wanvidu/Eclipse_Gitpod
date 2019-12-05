FROM gitpod/workspace-full-vnc

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

USER root

RUN apt-get update --fix-missing && \
    apt-get install -y snapd
    
RUN snap install --classic eclipse

RUN chmod -R 0777 /home/gitpod/
