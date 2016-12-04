FROM node:6.9.1
MAINTAINER Kevin Velasco <me@kvnvelasco.com>

COPY . /sitemapper
WORKDIR /sitemapper

RUN npm i -g yarn bower
RUN yarn
RUN bower install --allow-root

# Build the services initially
RUN npm run build

# Start the server
CMD npm start
