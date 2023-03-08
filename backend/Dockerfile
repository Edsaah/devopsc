FROM node:12-alpine3.14
WORKDIR /app
RUN apk add nodejs npm
RUN apk add nodejs-current
COPY . .
RUN npm ci
ENTRYPOINT ["npm", "start"]
EXPOSE 8080
