FROM alpine
RUN apk update && apk upgrade
RUN apk add bash
RUN apk add nodejs
RUN npm install pm2 -g

ADD . /var/daotest
WORKDIR /var/daotest/app

RUN npm install

ENV PORT 10000

EXPOSE 10000
