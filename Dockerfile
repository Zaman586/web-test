# Use a lightweight base image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files first (this helps leverage Docker layer caching)
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
