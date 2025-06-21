# Use the official Node.js 22.16 image as the base image
FROM node:22.16

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the working directory
COPY . .

# Install dependencies using npm ci for a clean installation
RUN npm ci

# Expose the port the application listens on
EXPOSE 3000

# Define the command to start the application
CMD [ "npm", "start" ]