FROM nginx:alpine

# Copy the HTML and CSS files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 8081 (the port Nginx will listen on)
EXPOSE 8081

# Modify the default Nginx configuration to listen on port 8081
RUN sed -i 's/listen       80;/listen       8081;/' /etc/nginx/conf.d/default.conf

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
