FROM node:16.17.1

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . . 

EXPOSE 4000

CMD ["npm", "run", "start-dev"]