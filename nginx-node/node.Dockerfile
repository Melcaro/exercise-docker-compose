FROM node:8.17.0-alpine3.9

ENV NPM_CONFIG_LOGLEVEL info

COPY ./server.js .
COPY ./package.json .

RUN npm install

EXPOSE 3000

CMD ["node","/server.js"]