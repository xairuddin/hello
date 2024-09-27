# Step 1: Use the official Nginx base image
FROM nginx:alpine

# Step 2: Set the working directory to the Nginx web directory
WORKDIR /usr/share/nginx/html

# Step 3: Copy the custom index.html file into the Nginx web directory
COPY ./index.html .

# Step 4: Expose port 80 for HTTP traffic
EXPOSE 80

# Step 5: Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
