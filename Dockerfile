FROM node:22.19.0-alpine

WORKDIR /usr/src/app
COPY . .
CMD ["node", "index.js"]
