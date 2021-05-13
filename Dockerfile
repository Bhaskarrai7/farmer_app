FROM node:latest


COPY ./package.json ./
COPY ./yarn.lock ./
COPY ./frontend/package.json ./
COPY ./frontend/yarn.lock ./


RUN npm install

COPY . .


EXPOSE 3000
EXPOSE 3001

CMD ["npm", "run" , "dev"]
