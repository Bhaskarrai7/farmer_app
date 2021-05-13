FROM node:latest


COPY ./package.json ./
COPY ./yarn.lock ./

RUN npm install

COPY . .


EXPOSE 3000
CMD["node","server.js"]
