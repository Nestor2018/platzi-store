# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Tag the image correctly
LABEL version="1.0"
# Command to run the application
CMD ["npm", "run", "start:prod"]

