FROM ruby:2.5.7

LABEL authors="Ataliba Teixeira <ataliba@protonmail.com>"

RUN apt-get update -y
RUN apt-get install  -y curl python3 python3-pip rsync  

RUN pip3 install pip 
RUN pip3 install awscli

RUN gem install jets 

