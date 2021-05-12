FROM node:latest

WORKDIR /home/hp/projects/farmers-app

COPY ./package.json ./


RUN npm install
COPY . .

EXPOSE 3000
Expose 3001
CMD ["npm run dev"]
