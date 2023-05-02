FROM node:16

# Create app directory
WORKDIR /usr/src/app

#adding all frontend files
ADD ./client ./ 

#grabbing dependencies files and backend 
COPY /server/package*.json ./
COPY /server/app.js ./
COPY /server/dbService.js ./
COPY /server/.env ./

# Install app dependencies
RUN npm install


EXPOSE 5000
CMD [ "node", "app.js" ]