# Use the official Nginx image as a base
FROM nginx:alpine

# Set the directory for the web files
WORKDIR /usr/share/nginx/html

# Copy the content of your website to the Nginx web root directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]