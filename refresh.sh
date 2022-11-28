
# Stop the old
docker stop proj5-site
docker ps -a
docker rm proj5-site
docker ps -a


# In with the new
docker pull mbarlage/cicd-3120-mbarlage:latest
sudo docker images
sudo docker run -d -p 8080:80 --name proj5-site mbarlage/cicd-3120-mbarlage
