FROM node:7.8

# setup vm
RUN apt-get -y update && apt-get

# global npm packages
RUN  npm install -g pm2 nodemon

# source
RUN mkdir /www/app
WORKDIR /www/app

RUN mkdir /root/.ssh \
    && echo "StrictHostKeyChecking no " > /root/.ssh/config