FROM kalilinux/kali-rolling

WORKDIR root

RUN apt update && apt upgrade
RUN apt install -y vim wget git
RUN wget https://spacevim.org/install.sh
RUN bash install.sh 

