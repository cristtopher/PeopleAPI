# Author: Cristtopher Quintana T. <cquintana@axxezo.com>
# Date: 3 Aug 2017
# -----
FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
RUN npm install
# Bundle app source
COPY . .
EXPOSE 8000
CMD [ "npm", "start" ]
