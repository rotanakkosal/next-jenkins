# Use an official Node.js runtime as a parent image
FROM node:20.5.0 AS nextjs-build

# Set the working directory
WORKDIR /app

# Copy package.json
COPY package.json ./

# Install dependencies using YARN
RUN yarn install

# Copy the rest of your app's source code
COPY . .

# Build your Next JS application
RUN yarn run build

# Run React JS Project
CMD ["yarn", "start"]
