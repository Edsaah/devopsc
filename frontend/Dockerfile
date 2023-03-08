FROM node:12-alpine3.14
WORKDIR /app
RUN apk add nodejs npm
RUN apk add nodejs-current
COPY . .
ENTRYPOINT ["pwd", "&&" ,"ls", "-al", "&&" ,"npm", "ci", "&&", "npm", "start"]
EXPOSE 3000
