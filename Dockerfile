# Use the official Node.js 18 LTS image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the entire application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run the application
CMD ["npm", "start"]
