FROM node:latest

WORKDIR /home/hp/projects/farmers-app


COPY . .

RUN npm install

WORKDIR /home/hp/projects/farmers-app/frontend

RUN npm install

WORKDIR /home/hp/projects/farmers-app



EXPOSE 3000
EXPOSE 3001

CMD ["npm", "run" , "dev"]
