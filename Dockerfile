# Use a lightweight Node.js image
FROM node:20.15.1-slim

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port used by Next.js
EXPOSE 3000

# Start the Next.js server
CMD ["npm", "start"]