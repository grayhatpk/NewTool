# Use the official Apache image from Docker Hub
FROM httpd:alpine

# Set the working directory to the Apache web root
WORKDIR /usr/local/apache2/htdocs/

# Copy the content of your website to the Apache web root directory
COPY . /usr/local/apache2/htdocs/

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd-foreground"]
