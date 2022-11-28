**Name: Morgan Barlage**
# Project Overview

- what is the point of this project and what tools are used
- Part 4 - Diagramming goes here
  - Include a diagram (or diagrams) of your entire workflow. Meaning it should start with a project change / update, the steps that happen in between, and end with the updated version when the server is queried (web page is accessed)

# Run Project Locally

- how you installed docker + dependencies (WSL2, for example)
```
I installed Docker by following the documentation provided in this link: 
https://docs.docker.com/engine/install/ubuntu/. 
Dependencies = WSL2
```
- how to build the container
```
sudo docker build -f Dockerfile -t project5 .
```
- how to run the container
```
$ sudo docker run --name project5container -p 8080:80 project5

Where project5container is the container name and project5 is the base image.
```
- how to view the project running in the container (open a browser...go to ip and port...)
```
http://my_ip:8080

--or--

http://localhost:8080
```

# DockerHub

- Process to create public repo in DockerHub
```
Once you are signed in to DockerHub online, navigate to Repositories -> Create Repository, then name
your repo and add a description if necessary, and select private or public.
```
- How to authenticate with DockerHub via CLI using Dockerhub credentials
```
docker login -u your_username

You will then be prompted to enter your password. If successful, it will say Login Succeeded
```
- what credentials would you recommend providing?
```
I would rather provide an access token to log in than a password. It doesn't hold any information 
about the user. Also, we have more control over access tokens in our account settings, in which they
can be easily removed. Lastly, they are a lot stronger and harder to guess than a normal password usually. 
```
- How to push container to Dockerhub
```
The manual way on the command line to push an image is docker push [OPTIONS] NAME[:TAG] format. You
can also do this by configuring a workflow, in which mine is located in this repo. It does this by logging 
in to my Docker hub with the credentials I set in my repo's secrets. 
```

# GitHub Actions

- Configuring GitHub Secrets
  - What secrets were set based on what info
  ```
  I set two secrets inside of Actions Secrets found in in the Settings of my repository: 
  DOCKER_USERNAME and DOCKER_TOKEN that contain login credentials for Docker.
  ```
- Behavior of GitHub workflow
  - what does it do and when
  ```
  A Github workflow performs an action whenever it is told to. In our case, we are creating a workflow 
  for building and pushing an image to Docker. It will do this everytime we make a push to Github.
  ```
  - what variables in workflow are custom to your project
  ```
  DOCKER_HUB_REPO: cicd-3120-mbarlage
  DOCKER_TOKEN
  DOCKER_USERNAME
  ```
# Deployment

- Description of container restart script
```
A comntainer restart script trashes the old version and pulls the latest image to run an updated version. 
In this order:
docker stop name
docker rm name
docker pull mbarlage/cicd-3120-mbarlage:latest
sudo docker run -d -p 8080:80 --name name mbarlage/cicd-3120-mbarlage

I left out the output helper commands
```
- Setting up a webhook on the server
  - How you created you own listener
  ```
  Following the lectures,
  
  /home/ubuntu/go/bin/webhook -hooks /home/ubuntu/cicd-3120-mbarlage/hooks.json -verbose
  
  you can check if it is working by opening a new window and using the command:
  sudo lsof | grep LISTEN
  ```
  - How you installed the [webhook on GitHub](https://github.com/adnanh/webhook)
  ```
  go install github.com/adnanh/webhook@latest
  ```
  - How to keep the webhook running if the instance is on
- Description of Webhook task definition file
```
[
  {
     "id": "mbarlage",
     "execute-command": "/home/ubuntu/refresh.sh",
     "command-working-directory": "/var/webhook"
  }
]

id: hook name
execute-command: the script the hook is going to execute and where it is located

```
- Steps to set up a notifier in GitHub or DockerHub
```
In Docker Hub, I went to my repository -> Webhooks and created a new webhook
called Deploy a new image with the following URL:

http://44.196.218.155:9000/hooks/mbarlage

44.196.218.155 - EIP of AWS instance
```
