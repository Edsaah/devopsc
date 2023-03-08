# Overview
This demo project contains two apps, the Backend and the Frontend.

In each app's folder, there is a Dockerfile to containerize the apps.

# Objective
In this project demo, I am deploying the two app in different containerized forms using docker containers. This is done using an EC2 ubuntu instance.
Instead of using localhost, I am using the public IP of my EC2 instance for this demonstration.
# Submission
 Firstly, I have created an ec2 instance from AWS and accessed the server via SSH and opened ports 8080 and 3000.
Then I have also forked and cloned the challenge project to my server
I downloaded Docker Engine and Docker-Compose plugin to my ec2 instance

I created a start.sh file which ahs all the instructions for fetching all the necessary files, input the current IP and build the applications

I performed the following steps to create a docker images for my backend and frontend apps:
* Inside the backend and backend folders, I have created a Dockerfiles which are use to create images for theboth the backend and frontend apps
* I located these images by running ($ sudo docker images) which showed the images info.
 
# Configuration changes in the application code

In my start.sh, I am integrating my current ip to properly configure where is necessary. 

# Running the application container

To make sure that the backend app was running on port 8080, I checked this by using "http://public_ip:8080"

7. The container for backend app was created, I ran the application in the container and listened the app's port 3000 using my pulic ip by running these:
* sudo docker exec -it frontend_app /bin/sh
* npm ci
* npm start
Next step was to make sure that the backend app was running on port 3000, I checked this by using "http://public_ip:3000"

# outcome of this demostration

when you hit the  url for backend app by using "http://public_ip:8080" you will get respose with an id of the Backend app.
In the Frontend app, there is a function App() which is returning response id of the Backend app as an output if the connectivity is good between the Backend and the Frontend or else it gives error "fail to fetch" message.

# realtime demo urls:

- for my backend app use: http://35.91.237.206:8080
- for my frontend app use: http://35.91.237.206:3000

Note: I verified that the application is up and running by the following:
{"id":"9e7f22e9-870a-46f5-a67b-676d943d355f"} and 9e7f22e9-870a-46f5-a67b-676d943d355f

To excute this code, execute start.sh (./start.sh) after installing both Docker engine and Docker-Compose plugin. 
You can hit front and backend url with following:
- for my backend app use: http://35.91.237.206:8080
- for my frontend app use: http://35.91.237.206:3000