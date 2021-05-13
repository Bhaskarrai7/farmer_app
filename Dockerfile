FROM node:latest

WORKDIR /home/hp/projects/farmers-app

COPY ./package.json ./
COPY ./yarn.lock ./

COPY ./frontend/package.json ./
COPY ./frontend/yarn.lock ./


RUN npm install
RUN npm add express

COPY . .


EXPOSE 3000
EXPOSE 3001

CMD ["npm", "run" , "dev"]
