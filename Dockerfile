FROM node:16.17.1

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . . 

EXPOSE 4000

CMD ["npm", "run", "start-dev"]


## 1-) Create Image
# docker build -t node-app-image .

## 2-) Create Container
# ${pwd} : working dir
# -p P1:P2 P1 for cont, P2 for local machine, access P1 from P2
# -v Volume
# docker run --name node-app-container -v ${pwd}/src:/app/src -d -p 4000:4000 -e CHOKIDAR_USEPOLLING=true node-app-image

## 3-) Delete Container
#  docker rm node-app-container -f 

## 4-) Show logs of running container
# docker logs node-app-container

## 5-) show running containers
#  docker ps

## 6-) run container and open bash
# docker exec -it node-app-container bash

