# Use the official Nginx image as a base
FROM nginx:latest

# Copy the build files to the Nginx html directory
COPY ./build/web /usr/share/nginx/html

# Optionally, copy a custom Nginx configuration file
# COPY default.conf /etc/nginx/conf.d/default.conf

# production environment
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]