FROM node:16.2.0-alpine3.13

# Create app directory

WORKDIR /sample_app
COPY secrets/variables.env ./.env
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied

COPY ./package*.json ./

RUN pwd
RUN npm install

RUN npm install nodemon
RUN pwd
# Bundle app source
COPY . /sample_app/

RUN pwd
RUN ls -la

EXPOSE 3000
CMD [ "npm", "start" ]
