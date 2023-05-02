FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY /server/package*.json ./
COPY /server/app.js ./
COPY /server/dbService.js ./
COPY /server/.env ./

#ADD ./client ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
#COPY . .

EXPOSE 5000
CMD [ "node", "app.js" ]