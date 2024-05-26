# Use an official Dart image as a parent image
FROM cirrusci/flutter:3.3.10

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
