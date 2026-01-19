FROM node:lts-alpine

# Create non-root user
RUN addgroup -S app && adduser -S app -G app

WORKDIR /app

# Copy dependency files first (better caching)
COPY package*.json ./

# Install dependencies as root
RUN [ "npm", "install" ]

# Copy app source
COPY . .

# Fix ownership once
RUN chown -R app:app /app

# Drop privileges
USER app

EXPOSE 5173

CMD ["npm", "run", "dev"]