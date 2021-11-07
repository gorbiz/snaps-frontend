FROM node:16-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . /app

EXPOSE 8080
CMD [ "node", "index.js" ]
