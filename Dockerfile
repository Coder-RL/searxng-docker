# Use the official SearXNG image
FROM docker.io/searxng/searxng:latest

# Install curl and wget
RUN apk add --no-cache curl wget

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# Start SearXNG
CMD ["searxng"]
