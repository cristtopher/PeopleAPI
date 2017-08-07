FROM node:boron
MAINTAINER Cristtopher Quintana T. "cquintana@axxezo.com"
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
RUN npm install
# Bundle app source
COPY . .
EXPOSE 8000
CMD [ "npm", "start" ]
