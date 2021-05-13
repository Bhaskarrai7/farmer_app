FROM node:latest

WORKDIR /home/hp/projects/farmers-app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN npm install -g

COPY ./frontend/package.json ./
COPY ./frontend/yarn.lock ./


COPY . .


EXPOSE 3000
EXPOSE 3001

CMD ["npm", "run" , "dev"]
