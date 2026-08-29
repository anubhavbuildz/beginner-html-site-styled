FROM ubuntu:24.04

WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Copy your application
COPY . /app

# Install Python dependencies if requirements.txt exists

# Expose port 99
EXPOSE 99

