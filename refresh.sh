
# Stop the old
<<<<<<< HEAD
docker stop proj5-site
docker ps -a
docker rm proj5-site
=======
docker stop project5container
docker ps -a
docker rm project5container
>>>>>>> cf2fbd69b8da5c08176903550fd6370d899ce145
docker ps -a


# In with the new
docker pull mbarlage/cicd-3120-mbarlage:latest
sudo docker images
sudo docker run -d -p 8080:80 --name proj5-site mbarlage/cicd-3120-mbarlage
