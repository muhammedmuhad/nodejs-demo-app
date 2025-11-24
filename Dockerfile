# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files & install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy remaining source code
COPY . .

# Expose port used by the app
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
