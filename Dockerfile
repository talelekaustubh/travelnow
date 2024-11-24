# FROM node:alpine3.19

# WORKDIR /app

# LABEL MAINTAINER="sksupremeboss"

# COPY package*.json ./

# RUN npm install

# COPY . .

# EXPOSE 5000

# CMD ["node","App.js"]

# Step 1: Use Node.js image to build the app
# FROM node:16 AS build

# # Set working directory
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application code
# COPY . .

# # Build the React app for production
# RUN npm run build

# # Step 2: Use Nginx to serve the app
# FROM nginx:alpine

# # Copy the build files to Nginx's default public directory
# COPY --from=build /app/build /usr/share/nginx/html

# # Expose port 80
# EXPOSE 80

# # Start Nginx server
# CMD ["nginx", "-g", "daemon off;"]

FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to   
 install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build   


# Expose the port for the app to listen on
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]
