FROM gitpod/workspace-full-vnc

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && \
    snap install --classic eclipse

RUN chmod -R 0777 /home/gitpod/
