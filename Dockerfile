FROM node:18

WORKDIR /app

# Copy only package files first for better Docker cache usage
COPY package*.json ./

RUN npm install

# Now copy the rest of the project
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
