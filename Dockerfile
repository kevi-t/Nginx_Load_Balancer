# FROM node:16

# # Create app directory
# WORKDIR /usr/src/app

# # Install app depoendencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied where available(npm@5+)
# COPY package*.json ./

# RUN npm install
# # If you are building your code  for production
# # RUN npm ci --only=production

# # Bundle app source
# COPY . .

# EXPOSE 3000
# CMD [ "npm","run","start" ]




# Use Node.js as the base image
FROM node:16

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY server/package*.json ./
RUN npm install

# Copy backend files
COPY server/ ./

# Expose port (change if needed)
EXPOSE 3000

# Start the server
CMD ["node", "index.js"]
