From debian:wheezy

MAINTAINER CenturyLink Labs <clt-labs-futuretech@centurylink.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive  && apt-get -y install openssl
CMD openssl genrsa -out /certs/${KEY_NAME}.key 1024 && \
    openssl req  -new -newkey rsa:4096 -days 365 -nodes -subj "/C=/ST=/L=/O=/CN=${COMMON_NAME}" -keyout /certs/${KEY_NAME}.key -out /certs/${KEY_NAME}.csr  && \
    openssl x509 -req -days 365 -in /certs/${KEY_NAME}.csr -signkey /certs/${KEY_NAME}.key -out /certs/${KEY_NAME}.crt
