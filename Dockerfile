FROM ubuntu:22.04

WORKDIR /workspace

RUN apt update

RUN apt install -y lua5.4 luajit luarocks

RUN luarocks install moonscript

WORKDIR /code

COPY bin .

CMD "moon hello.moon"