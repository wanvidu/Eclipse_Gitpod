FROM gitpod/workspace-full-vnc

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH=/home/gitpod/:$PATH

RUN apt-get update --fix-missing && \
    apt-get install -y wget bzip2 ca-certificates curl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cd /home/gitpod && wget -qO eclipse-java-neon-2-linux-gtk-x86_64.tar.gz https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/2/eclipse-java-neon-2-linux-gtk-x86_64.tar.gz \
    && tar -xvf eclipse-java-neon-2-linux-gtk-x86_64.tar.gz && rm eclipse-java-neon-2-linux-gtk-x86_64.tar.gz

RUN chmod -R 0777 /home/gitpod/
