# Use a lightweight web server
FROM nginx:alpine

# Copy your HTML file
COPY index.html /usr/share/nginx/html/

# Copy any static assets if you have them
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
