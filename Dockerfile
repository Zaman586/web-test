# Use a base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN npm install

# Expose the port your application runs on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]

