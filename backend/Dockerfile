# Frontend Dockerfile
FROM node:lts-alpine3.17
COPY . /app
WORKDIR /app/backend
RUN npm install
RUN npm run build
EXPOSE 8080
CMD ["npm", "start"]
