FROM nginx:alpine

# Copy the HTML and CSS files to the Nginx HTML directory
COPY color.html /usr/share/nginx/html
COPY color.css /usr/share/nginx/html

# Expose port 8080 (the port Nginx will listen on)
EXPOSE 8080

# Modify the default Nginx configuration to listen on port 8080
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
