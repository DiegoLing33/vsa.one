FROM node:15.12.0-alpine3.10
WORKDIR /app

# Installing dependencies
COPY package*.json ./
RUN yarn

# Copying source files
COPY . /app

# Building app
RUN yarn next build
EXPOSE 3000

# Running the app
CMD ["yarn", "start"]