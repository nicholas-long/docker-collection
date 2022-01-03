FROM kalilinux/kali-rolling

WORKDIR /opt/pyrit

RUN apt update && apt install -y python2 gcc git python2-dev libpcap-dev libssl-dev libz-dev libpq-dev
RUN git clone https://github.com/JPaulMora/Pyrit.git .
RUN sed -i 's/#define COMPILE_AESNI//g' cpyrit/cpufeatures.h

#RUN python2 -m ensurepip --upgrade
ADD https://bootstrap.pypa.io/pip/2.7/get-pip.py  /opt/get-pip.py
RUN python2 /opt/get-pip.py

# per https://github.com/arunderwood/docker-pyrit/blob/master/Dockerfile
# Pyrit v0.5.0 does not work with scapy 2.4
RUN python2 -m pip install scapy==2.3.3 psycopg2

RUN python2 setup.py install
ENTRYPOINT [ "pyrit" ]

