# Use the official Nginx image from the Docker Hub
FROM nginx

# Copy the build output to replace the default Nginx contents.
COPY build/web /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
