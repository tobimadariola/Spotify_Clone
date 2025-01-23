# Use the official Node.js image as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Accept the Spotify API key as a build argument
ARG SPOTIFY_API_KEY

# Set the environment variable for Spotify API Key (can be used in the application)
ENV SPOTIFY_API_KEY=${SPOTIFY_API_KEY}

# Copy package.json and yarn.lock to install dependencies
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the application for production
RUN yarn build

# Install a simple web server to serve the static files
RUN npm install -g serve

# Expose the port on which the app will run
EXPOSE 3000

# Command to run the application
CMD ["serve", "-s", "build"]