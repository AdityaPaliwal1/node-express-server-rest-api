## Pull base image from dockerhub
FROM node:18-alpine

## Set working directory
WORKDIR /app

## Copy package.json in the working directory
COPY package*.json ./

## Install dependencies
RUN npm install

## Copy all files in the working directory
COPY . .

## Expose the port the app runs inside the container
EXPOSE 3000

## Start the application
CMD ["npm", "start"]