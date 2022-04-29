#!/bin/bash

docker build . -t lighttpdcgi && \
  docker run --rm -d -v "${PWD}/root:/var/www/html" -v "${PWD}/cgi:/usr/lib/cgi-bin" -p "80:80" lighttpdcgi && \
  echo "server started."
