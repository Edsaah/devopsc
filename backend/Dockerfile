FROM node:12-alpine3.14
WORKDIR /app
RUN apk add nodejs npm
RUN apk add nodejs-current
COPY . .
ENTRYPOINT ["npm ci", "npm start"]
# CMD node /frontend/scr/index.js
EXPOSE 8080
