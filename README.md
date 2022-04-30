# docker-workshop

This is a simple web application using Python Flask. This is used in the demonstration deployment of sample application using Docker

Below are the steps required to get this working on a base linux system.

- Install Docker
- Clone the repo or copy the required files.
- Build Docker image
- Run `docker run` command
- Test using browser


## 1. Install Docker

Docker and its dependencies 
  
    
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    
 
 ## 2. Clone the repo or copy the files to your local servers.
 
    
    git clone https://github.com/anil4u-04/docker-workshop.git
    

## 3. Build Docker image

Build the docker image from the Dockerfile

    
    docker build --no-cache -t sampleapp:latest .
    

## 4. Running the docker run command 

Run the docker run command to application to start.

    
    docker run -p 5000:5000 -it sampleapp
    
 if you want to make the container to run background use this command
 
    
    docker run -dp 5000:5000 -it sampleapp
    
 
 ## 5. Testing 
 
 Open a browser and go to URL

    http://<IP>:5000                            => Welcome
    http://<IP>:5000/how%20are%20you            => I am good, how about you?
 
