## The purpose of this is to save build times and not to depend on the external resources everytime we build the actual project
## Following is a pre build docker script to generate an image with required software and dependencies for building the actual project files next
## Going forward the image generated from this script can be used as the base image to build go kafka related producer/consumer services

### STAGE 0: Build ###

FROM golang:alpine
RUN apk add --update --no-cache alpine-sdk bash openssl-dev musl-dev zlib-dev
RUN apk add --no-cache tzdata
WORKDIR /root
RUN git clone https://github.com/edenhill/librdkafka.git
WORKDIR /root/librdkafka
RUN git checkout tags/v1.4.0-RC4
RUN /root/librdkafka/configure && \
    make && \
    make install;
