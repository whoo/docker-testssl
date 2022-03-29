FROM debian:11
RUN apt -y update 
RUN apt -y install openssl procps bsdmainutils git host
RUN cd /opt ; git clone https://github.com/drwetter/testssl.sh.git
WORKDIR /opt/testssl.sh
ENTRYPOINT ["./testssl.sh"]
CMD [""]
