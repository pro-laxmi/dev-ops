# Importing node image
FROM node:lts-alpine3.23

# default directory
WORKDIR /app

# Copy everything from the currect directory to the docker image
COPY . .

# Exec-form CMD ensures your Node process receives OS signals so it can shut down cleanly.
# CMD ["node", "docker-test.js"] --> Correct format
CMD node docker-test.js