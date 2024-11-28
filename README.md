# Getting Started with Create React App
In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

# travelnow React App - Dockerization Guide

## Overview

This repository contains a **React application** that has been **dockerized** for easy deployment. This guide will help you set up, build, and run the React app inside a Docker container.

---

## Prerequisites

Before you begin, ensure that you have the following installed on your local machine:

- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **Node.js**: If you want to build the app manually, ensure Node.js is installed.

---

## Step-by-Step Guide to Dockerize the React App

### 1. Clone the Repository

Clone the repository to your ec2 instance or local machine if you haven’t done so already.
```bash
git clone https://github.com/talelekaustubh/travelnow.git
cd travelnow
```

### 2. Create Dockerfile
```bash

FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build   

EXPOSE 3000

CMD ["npm", "start"]
```

### 3.Build the Docker Image

In the terminal, navigate to the directory where the Dockerfile is located and run the following command to build the Docker image:

```bash
docker build -t travelnow .
```

### 4. Run the Docker Container

Once the image is built, run the following command to start the container:

```bash
docker run -p 3000:3000 travelnow
```

### 5. Access the App in Your Browser

Open your browser and visit your_instance_ip:3000 or visit http://localhost on local machine. You should see the React app running from the Docker container.




