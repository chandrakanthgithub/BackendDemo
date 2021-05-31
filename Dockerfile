FROM node:8.9-alpine
RUN mkdir -p /app
WORKDIR /app
ENV NODE_ENV=development
RUN npm install -g nodemon
RUN apk update && apk add bash
RUN npm config set registry https://registry.npmjs.org
COPY package.json /app/package.json
RUN npm install \
 && npm ls \
 && npm cache clean --force \
 && mv /app/node_modules /node_modules
 
COPY . /app
# dockerfile for nodejs connection to sql
#CMD ["nodemon", "server.js"]
