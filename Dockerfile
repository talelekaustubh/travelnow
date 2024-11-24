FROM node:alpine3.19

WORKDIR /app

LABEL MAINTAINER="sksupremeboss"

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["node","App.js"]

