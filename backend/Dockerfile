# Frontend Dockerfile
FROM node:14
COPY . /app
WORKDIR /app/backend
RUN npm install
RUN npm run build
EXPOSE 8080
CMD ["npm", "start"]
