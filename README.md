This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Docker
1. Dockerfile is the config file for docker container.

2. First we have created the docker image for this project i.e


2.1) First created the build and then serve it on some port
    
    docker build -t serve-react .

2.2) Then we create a container where we run this project 
    
    docker run -it -p 8080:80 serve-react

We can then get a container running our project.