# Use the official Node.js 14 image as the base image
FROM node:16

# Create and set the working directory in the container
WORKDIR /user/src/server

# Copy package.json and package-lock.json to the working directory in the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory in the container
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

# Start the application
CMD [ "node", "src/server.js" ]
