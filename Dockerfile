# Use a Node.js base image
FROM node:18-alpine as build

# Set working directory
WORKDIR /spotify_clone

# Copy package files
COPY package*.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the source code
COPY . .

# Build the app for production
RUN yarn build

# Use a lightweight web server to serve the built app
FROM nginx:alpine

# Copy build files to the web server's directory
COPY --from=build /spotify_clone/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]