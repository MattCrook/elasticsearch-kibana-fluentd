FROM node:13-alpine

# copy package.json and package-lock.json into container
# copy app content into container
COPY package*.json /usr/app/
COPY app/* /usr/app/

# set root dir inside container
WORKDIR /usr/app

RUN npm install
CMD ["node", "server.js"]
