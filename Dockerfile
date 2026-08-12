FROM node:20-alpine3.20

WORKDIR /app

COPY package.json ./
RUN apk add --no-cache bash openssl curl && npm install

COPY index.js index.html ./

EXPOSE 10000

CMD ["node", "/app/index.js"]
