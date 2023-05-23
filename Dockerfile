# Use an official Nginx base image
FROM nginx

# Copy the custo Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# copy the application files to the web root directory
COPY index.html /usr/share/nginx/html/
COPY static /usr/share/nginx/html/static

# Expose port 80
EXPOSE 80 
