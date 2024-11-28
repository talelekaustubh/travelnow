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

'''bash
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build   

EXPOSE 3000

CMD ["npm", "start"]
'''

