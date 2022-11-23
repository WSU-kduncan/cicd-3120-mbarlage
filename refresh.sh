
# Stop the old
docker stop name
docker ps -a
docker rm name
docker ps -a

# In with the new
docker pull mbarlage/cicd-3120-mbarlage:latest
sudo docker images
sudo docker run -d -p 8080:80 --name name mbarlage/cicd-3120-mbarlage
