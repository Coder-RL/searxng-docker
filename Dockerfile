# Use the official SearXNG image as the base
FROM docker.io/searxng/searxng:latest

# Install curl using Alpine's package manager
RUN apk --no-cache add curl

# Set the working directory
WORKDIR /usr/local/searxng

# Copy your custom settings into the container
COPY settings.yml /etc/searxng/settings.yml

# Expose the necessary port
EXPOSE 8080

# Define the entrypoint
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# Start SearXNG
CMD ["searxng"]
