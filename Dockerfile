# Stage 1: Build the Flutter web app
# FROM google/flutter AS build

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Run Flutter build command
RUN flutter build web

# Stage 2: Serve the built app with Nginx
FROM nginx:alpine

# Copy the build output from the previous stage to Nginx's HTML directory
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
