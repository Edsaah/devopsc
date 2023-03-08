FROM node:12-alpine3.14
RUN apk add nodejs npm
RUN apk add nodejs-current
WORKDIR /app
COPY . .
ENTRYPOINT ["npm", "ci", "&&", "npm", "start"]
EXPOSE 8080
