FROM node:alpine3.19

WORKDIR /src/App

LABEL MAINTAINER="sksupremeboss"

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD["node","App.js"]

