FROM node:14

WORKDIR /project

COPY package*.json ./ 

RUN npm ci

COPY . .

EXPOSE 8081

CMD ["node", "index.js"]