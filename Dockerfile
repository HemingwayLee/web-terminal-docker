FROM node:14

RUN apt-get update && apt-get install -y net-tools postgresql-client 

RUN mkdir -p /home/app/
COPY . /home/app/
WORKDIR /home/app/

RUN npm install -g concurrently
RUN npm install .



