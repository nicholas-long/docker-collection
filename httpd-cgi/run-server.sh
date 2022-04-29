#!/bin/bash

#docker run --rm -p "80:80" httpd
docker build . -t cgi
docker run --rm -v "${PWD}/root:/usr/local/apache2/htdocs" -v "${PWD}/cgi:/usr/local/apache2/cgi-bin" -p "80:80" cgi
