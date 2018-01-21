FROM python:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN git clone https://github.com/LukasdeBoer/horepg.git /horepg
WORKDIR /horepg
RUN python setup.py install
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh

