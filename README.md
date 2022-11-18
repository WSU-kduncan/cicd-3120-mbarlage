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

Where project5container is the container name and project5 is the base image.
```
4. How to view the project running in the container (open a browser...go to ip and port...)
```
http://my_ip:8080

--or--

http://localhost:8080
```

**Part 2 - GitHub Actions & DockerHub**
1. Process to create public repo in DockerHub
```
Once you are signed in to DockerHub online, navigate to Repositories -> Create Repository, then name
your repo and add a description if necessary, and select private or public.
```

2. How to authenticate with DockerHub via CLI using Dockerhub credentials
- what credentials would you recommend providing?

3. How to push container to Dockerhub

4. Configuring GitHub Secrets
```
I set two secrets inside of Actions Secrets found in in the Settings of my repository: 
DOCKER_USERNAME and DOCKER_TOKEN that contain login credentials for Docker.
```

5. Behavior of GitHub workflow
- what does it do and when
- what variables in workflow are custom to your project
- think may need to be changed if someone else is going to use it or you reuse it
