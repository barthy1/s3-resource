FROM ppc64le/ubuntu:14.04

# satisfy go crypto/x509
RUN apt-get update
RUN apt-get install -y openssl ssl-cert
RUN cat /etc/ssl/certs/*.pem > /etc/ssl/certs/ca-certificates.crt

ADD assets/ /opt/resource/
