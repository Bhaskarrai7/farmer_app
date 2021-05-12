FROM node:latest

WORKDIR /home/hp/projects/farmers-app

COPY ./package.json ./


RUN npm install
COPY . .

EXPOSE 3000
CMD ["npm run dev"]
