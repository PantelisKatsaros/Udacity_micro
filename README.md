[![CircleCI](https://dl.circleci.com/status-badge/img/gh/PantelisKatsaros/Udacity_micro/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/PantelisKatsaros/Udacity_micro/tree/main)

## Project Summary

This Project was created for the needs of the Udacity: Microservices at Scale using AWS & Kubernetes Paid Course.
It includes a Microservice for the Model Data Prediction. The Microservice was containized with Docker and Kubernetes.
The code was tested with CircleCI.

## App Execution

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh` (Build and Run the Dockerfile)
3. Run in Kubernetes:  `./run_kubernetes.sh` (Prerequisete: Start Minikube)


## SW Architecture
Output_txt_files: Include the log of executing the Microservice with Docker and Kubernetes
app.py: The python Microservice Script
Dockerfile: Needed Dockerfile for building the DockerFile image
Makefile: For installing all needed dependencies for the Virtual Evn
run_docker.sh: Shell script to run the Model Prediction Microservice with Docker
run_kubernetes.sh: Shell script to run the Model Prediction Microservice with Kubernetes
upload_docker.sh: Shell script to push the updated Docker image to Dockerhub after performing changes in the app.py

