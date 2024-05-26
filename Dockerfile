# Start with a base image that has the necessary dependencies
FROM ubuntu:20.04

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /flutter

# Set Flutter path
ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Enable flutter web
#RUN flutter channel stable && flutter upgrade

RUN flutter config --enable-web

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Get dependencies
RUN flutter pub get

# Build the Flutter web app
RUN flutter build web --release

# Use the Nginx image to serve the built Flutter web app
FROM nginx:alpine

# Copy the build output to Nginx's HTML directory
COPY --from=0 /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
