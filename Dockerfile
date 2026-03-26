# Use Node 22 image
FROM node:22

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "run", "dev"]