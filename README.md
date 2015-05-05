openssl
=======

[![](https://badge.imagelayers.io/centurylink/openssl.svg)](https://imagelayers.io/?images=centurylink/openssl:latest 'Get your own badge on imagelayers.io')

Debian based image with openssl for ssl certificate generation.

Usage `docker run --rm  -e COMMON_NAME=<Common Name> -e KEY_NAME=<Cert File Names Prefix> -v /var/certs:/certs centurylink/openssl`
