# Use the official Node.js image.
# Use the latest LTS version of Node.js.
FROM node:lts

# Set the working directory inside the container.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files.
COPY *.json ./

# Install the dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Expose the port that the application will run on.
EXPOSE 3000

# Start the application.
CMD ["node", "server"]
