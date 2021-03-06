FROM node:10.15
RUN mkdir /app
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . /app
EXPOSE 3000
CMD ["node", "app.js"]
