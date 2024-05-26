# Start with a base image that has the necessary dependencies
FROM nginx:alpine

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Use the Nginx image to serve the built Flutter web app

# Copy the build output to Nginx's HTML directory
COPY --from=0 /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
