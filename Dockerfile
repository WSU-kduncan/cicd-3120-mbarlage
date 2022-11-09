# Image this is based off of
FROM nginx

# Copy folder contents into container
COPY index.html /usr/share/nginx/html

# Port that the container will use
EXPOSE 80

# Commands to run when container starts 
# None yet
