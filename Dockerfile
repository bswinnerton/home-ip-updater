# Use Ubuntu 18.04 LTS as the base image
FROM ubuntu:18.04

# Install curl
RUN apt-get update && apt-get install -y curl jq

# Create and change directories into the /app folder
WORKDIR /app/

# Add the contents of the local `src/` directory into the /app folder
ADD src/ /app/

# Run the ./update-dnsimple-ip-address command
CMD ["./update-dnsimple-ip-address"]
