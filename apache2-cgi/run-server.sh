#!/bin/bash

#docker run --rm -p "80:80" httpd

docker build . -t cgi && \
  docker run --rm -d -v "${PWD}/root:/var/www/html" -v "${PWD}/cgi:/usr/lib/cgi-bin" -p "80:80" cgi && \
  echo "server started."
