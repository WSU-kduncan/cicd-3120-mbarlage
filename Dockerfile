# Image this is based off of
FROM nginx


# Copy folder contents into container
COPY /home/mjbarlage/ceg3120/cicd-3120-mbarlage /usr/share/nginx/html

# Commands to run when container starts 
CMD [""]
