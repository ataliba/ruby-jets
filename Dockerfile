FROM bitnami/ruby:2.5.8-debian-10-r26

LABEL authors="Ataliba Teixeira <ataliba@protonmail.com>"

RUN apt-get update -y
RUN apt-get install  -y curl python3 python3-pip 

RUN  pip3 install awscli

RUN gem install jets 

