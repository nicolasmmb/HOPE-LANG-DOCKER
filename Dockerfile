#!/bin/bash
FROM ubuntu:latest as alpine-base

#DEPENDENCIAS PARA O HOPE
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y build-essential
RUN apt-get install -y bison 
RUN apt-get install -y flex


#CLONA O REPOSITORIO DO HOPE
RUN git clone https://github.com/dmbaturin/hope.git

#ACESSA E INSTALA O HOPE
WORKDIR /hope
RUN make install

#CRIAR DIRETORIO PARA O HOPE
WORKDIR /hope/HOME

# CMD [ "hope" ]
