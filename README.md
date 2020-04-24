# Details
To build and deploy Golang services using Kafka library librdkafka(as of this writing) you need to download, build and then use the librdkafka in your docker process of creating the image. This docker image can be used to save time and minimize dependencies while building your Golang services with librdkafka. 

This image is also recommended in a 2 phase docker build process as a first phase base image.

Tested with Golang 1.14.2 using librdkafka 1.4.0-RC4

ref: https://github.com/edenhill/librdkafka
