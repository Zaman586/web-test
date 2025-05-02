# Use Node.js official image
FROM node:18

# Set working directory
WORKDIR /app

# Copy only package files first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app source code
COPY . .

# Expose port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

