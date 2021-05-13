FROM node:latest

WORKDIR /home/hp/projects/farmers-app

COPY ./package.json ./
COPY ./yarn.lock ./

COPY ./frontend/package.json ./
COPY ./frontend/yarn.lock ./


RUN npm install


EXPOSE 3000
Expose 3001
CMD ["npm", "run" , "dev"]
