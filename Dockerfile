FROM node:8

#create app directory
WORKDIR /app

#Install app dependencies
#A wildcard is used to ensure both package.json and package-lock.json are copied where available

COPY package*.json ./

RUN npm install

#If you are building for production: 
#RUN npm ci --only production

COPY . .

EXPOSE 8000

CMD ["npm", "start"]