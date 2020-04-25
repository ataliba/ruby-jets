FROM ubuntu:latest

MAINTAINER "Ataliba Teixeira <ataliba@protonmail.com>"

# turn on universe packages
RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y universe
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y multiverse
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update


# basics
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx openssh-server git-core openssh-client curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3 python3-pip nano
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y zip openssl curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses-dev automake libtool bison subversion pkg-config
RUN pip3 install pip 

#Aws cli 
RUN pip3 install awscli 


# install RVM, Ruby, and Bundler
RUN bash -l -c "gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB"
RUN curl -L https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.5.7"
RUN /bin/bash -l -c "gem install jets bundler"

