FROM node:18.16-alpine

EXPOSE ${PORT}

WORKDIR /app

COPY src ./src
COPY package*.json tsconfig.json tsconfig.build.json ./

RUN npm ci
