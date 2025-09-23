# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your frontend build (or source files if plain HTML/CSS/JS)
COPY . /usr/share/nginx/html

# Expose port 80 for the container
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

