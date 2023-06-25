# Use a base image with Nginx pre-installed
FROM nginx:latest

# Copy the HTML and CSS files to the appropriate location
WORKDIR app
COPY . .


# Expose the default Nginx port (usually 80)
EXPOSE 80

# Start the Nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]
