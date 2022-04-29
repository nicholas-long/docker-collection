FROM httpd:latest

ADD httpd-conf-enable-cgi.sed /tmp/conf.sed
RUN sed -f /tmp/conf.sed -i /usr/local/apache2/conf/httpd.conf
