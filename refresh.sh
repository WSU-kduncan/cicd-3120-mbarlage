
# Stop the old
docker stop project5container
docker ps -a
docker rm project5container
docker ps -a


# In with the new
docker pull mbarlage/cicd-3120-mbarlage:latest
sudo docker images
sudo docker run -d -p 8080:80 --name proj5-site mbarlage/cicd-3120-mbarlage
