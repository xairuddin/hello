# Step 1: Use the official Nginx base image
FROM nginx:alpine

# Step 2: Remove the default Nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy the custom index.html file to the Nginx web directory
COPY index.html /usr/share/nginx/html/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
