# Use an official Node.js image as a base
FROM node:16-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
