from ubuntu:latest

# CGI scripts are looked for in /usr/lib/cgi-bin, which is where Ubuntu packages will place their scripts.
# You can enable cgi module by using command "lighty-enable-mod cgi".

RUN apt update && apt install -y \
  lighttpd \
  inetutils-ping \
  bsdmainutils \
  kafkacat \
  vim

RUN lighty-enable-mod cgi

ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
