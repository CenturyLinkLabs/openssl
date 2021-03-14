## NOTE

This repo is no longer being maintained. Users are welcome to fork it, but we make no warranty of its functionality.

openssl
=======

[![](https://badge.imagelayers.io/centurylink/openssl.svg)](https://imagelayers.io/?images=centurylink/openssl:latest 'Get your own badge on imagelayers.io')

Debian based image with openssl for ssl certificate generation.

Usage `docker run --rm  -e COMMON_NAME=<Common Name> -e $VALID_DAYS=365 -e KEY_NAME=<Cert File Names Prefix> -v /var/certs:/certs mparvin/openssl`

Example:
```bash
docker build -t openssl-generator .
sslPath=/etc/ssl/hub-example
mkdir $sslPath
docker run --rm -e COMMON_NAME=hub.example.com -e KEY_NAME=example-hub -v $sslPath:/certs openssl-generator
```
