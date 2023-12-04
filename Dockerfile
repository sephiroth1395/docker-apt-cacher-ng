# Use a minimal Debian base image
FROM debian:stable-slim

# Install apt-cacher-ng
RUN apt-get update && \
    apt-get install -y apt-cacher-ng && \
    rm -rf /var/lib/apt/lists/*

# Expose the apt-cacher-ng port
EXPOSE 3142

# Run apt-cacher-ng as a foreground process
CMD ["apt-cacher-ng", "Foreground=yes"]