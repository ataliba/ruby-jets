FROM ruby:2.5.8

LABEL authors="Ataliba Teixeira <ataliba@protonmail.com>"

RUN gem install jets 
RUN  apk add --update \
     python \
     python-dev \
     py-pip \
     build-base \
     && pip install awscli==$AWSCLI_VERSION --upgrade --user \
     && apk --purge -v del py-pip \
     && rm -rf /var/cache/apk/*

