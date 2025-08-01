# Dockerfile for Server
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

# Generate Prisma client
RUN npx prisma generate


# Expose port
EXPOSE 3000

# Start the server
CMD ["npm", "run", "dev"]  