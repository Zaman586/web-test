# Use a lightweight base image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
