FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 80

CMD ["npm", "run", "insertEbData"]
# CMD ["npm", "run", "serve"]

# Curretly the below commands need to be run from inside the container
# CMD ["npm", "run", "insertVenues"]
# CMD ["npm", "run", "insertEvents"]