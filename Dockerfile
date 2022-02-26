FROM node:12.18.1
ENV APP_PORT 8080

WORKDIR /

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]