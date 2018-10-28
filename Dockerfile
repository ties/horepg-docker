FROM python:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN git clone https://github.com/beralt/horepg.git /horepg && \
    git clone https://github.com/eficode/wait-for.git /waitfor && \
    mv /waitfor/wait-for /usr/local/bin && \
    rm -rf /waitfor

WORKDIR /horepg
RUN python setup.py install
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh

