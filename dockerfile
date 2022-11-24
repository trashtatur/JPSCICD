# pull official base image
FROM node:19-alpine

# Set working directory
WORKDIR /app

#Copy source files
COPY . .

RUN npm install
RUN npm rum build

# Expose the port on which the app will be running (3000 is the default that `serve` uses)
EXPOSE 3000

# Start the app
CMD [ "npx", "react-scripts", "start" ]