FROM node:12-slim

WORKDIR /usr/src/app

ENV HOST 0.0.0.0
ENV PORT 8080

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 8080
CMD node server.js
