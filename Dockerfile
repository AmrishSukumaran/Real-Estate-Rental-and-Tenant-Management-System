# Use official Node image
FROM node:16

# Install git (needed to clone repo)
RUN apt-get update && apt-get install -y git

# Set working directory inside container
WORKDIR /app

# Clone repo (use --depth=1 for faster shallow clone)
RUN git clone --depth=1 https://github.com/AmrishSukumaran/Real-Estate-Rental-and-Tenant-Management-System.git .

# -----------------
# Backend setup
# -----------------
WORKDIR /app/server

# Install backend dependencies
RUN npm install

# -----------------
# Frontend setup
# -----------------
WORKDIR /app/client

# Install frontend dependencies
RUN npm install

# Build frontend for production
RUN npm run build

# -----------------
# Final setup
# -----------------
WORKDIR /app/server

# Expose backend port
EXPOSE 5000

# Start backend server
CMD ["node", "server.js"]
