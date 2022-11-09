**Name: Morgan Barlage**

**Part 1 - Dockerize It** <br />
```
Project Overview: 
```
Run Project Locally
1. How I Installed Docker + Dependencies: 
```
I installed Docker by following the documentation provided in this link: 
https://docs.docker.com/engine/install/ubuntu/. 
Dependencies = WSL2
```
2. How to build the container from the Dockerfile: 
```
sudo docker build -f Dockerfile -t project5 .
```
3. How to run the container:
```
$ sudo docker run --name project5container -p 8080:80 project5

Where project5 is the container name and nginx is the base image.
```
4. How to view the project running in the container (open a browser...go to ip and port...)
```
http://my_ip:8080

--or--

http://localhost:8080
```

**Part 2 - GitHub Actions & DockerHub**
