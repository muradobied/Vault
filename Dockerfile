# Dockerfile
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]

COPY fetch-secrets.sh /usr/local/bin/fetch-secrets.sh
RUN chmod +x /usr/local/bin/fetch-secrets.sh

ENTRYPOINT ["fetch-secrets.sh"]
CMD ["node", "index.js"]

