# Simple Node with Express Server with REST API

[![Build Status](https://travis-ci.org/rwieruch/node-express-server-rest-api.svg?branch=master)](https://travis-ci.org/rwieruch/node-express-server-rest-api) [![Slack](https://slack-the-road-to-learn-react.wieruch.com/badge.svg)](https://slack-the-road-to-learn-react.wieruch.com/) [![Greenkeeper badge](https://badges.greenkeeper.io/rwieruch/node-express-server-rest-api.svg)](https://greenkeeper.io/)

An easy way to get started with a Express server offering a REST API with Node.js. [Read more about it.](https://www.robinwieruch.de/node-express-server-rest-api)

## Features

- Express
- REST API

## Requirements

- [node & npm](https://nodejs.org/en/)
- [git](https://www.robinwieruch.de/git-essential-commands/)
- [Docker](https://docs.docker.com/)
- [Kubernetes](https://kubernetes.io/docs/home/)

## Installation

- `git clone git@github.com:rwieruch/node-express-server-rest-api.git`
- `cd node-express-server-rest-api`
- `npm install`
- `npm start`
- optional: include _.env_ in your _.gitignore_


## Build and Run Docker Image locally using DockerFile
- `docker build -t <imageName> .`
- `docker run -env PORT=3000 -p <hostport>:<containerport> -d <imageName> `

## Build and Run Docker Image locally using docker-compose
- `docker compose up `

## Test your application locally with all endpoints
- Go to http://localhost:3000
- Test endpoint :
           - /messages
           - /messages/1
           - /users
           - /users/1
- Test Request using curl :
  - `curl -X POST -H "Content-Type:application/json" http://localhost:3000/messages -d '{"text":"Hi again, World"}'`

  - `curl -X DELETE -H "Content-Type:application/json" http://localhost:3000/messages/1`


## Build and Push Docker Image via CI
- This Repository has a workflow file which builds and push your repo's docker image to docker hub when someone is commiting or push something on master branch.

## Test Image push by CI
- Pull image from docker hub `docker pull adityapaliwal1/node-express-rest:latest`
- Run image and check by  ` docker run -env PORT=3000 -p 3000:3000 --name <container_name> adityapaliwal1/node-express-rest:latest`


## Build K8s Cluster in AWS using Terraform
- Run `terraform login` which streamlines the authentication and allowing us to leverage terraform services by stroring API token in local credential file.
- Run command `terraform init` in your terraform code directory
- `terraform init` command prepares your local environment to effectively interact with your      infrastructure defined in config files.
- Run `terraform plan` showing you exactly what changes terraform will make to your infrastructure to achieve desired state.
- Run `terraform apply` is the translets your Iac code into desired infrastructure by communicating with API of your cloud provider (e.g. AWS,GCP).


## Installing Kind on Windows/linux/macos
- Windows `choco install kind`
- Linux `sudo apt install kind`
- MacOS ` brew install kind`  

## Creating Cluster on Kind
- `kind create cluster --name {nameofcluster}` for creating a kubernetes cluster.
- `kind get nodes ` provides info about cluster node status

## Deploy Image on Kind cluster using Helm Chart
- Run `helm install release-name .` in the helm directory of your project.
- Run `kind load docker-image adityapaliwal1/node-express-rest:latest --name node-express-cluster` load docker image into kind cluster.
- Now that Kind knows about the image, install your Helm chart into that cluster:
   - `helm install my-release ./node-express-rest`

## Fetching Pods Details
- Run `kubectl get pods` provides list of pods
- Run `kubectl describe pod <pod-name>`

#### as we defined loadbalancer as service type in values.yaml
Kind doesn’t support real LoadBalancers by default, you can port-forward instead
- `kubectl port-forward service/my-release-node-express-rest 3000:3000`

##### Open Your browser
- http://localhost:3000

#### Postman

- Install [Postman](https://www.getpostman.com/apps) to interact with REST API
- Create a message with:
  - URL: http://localhost:3000/messages
  - Method: POST
  - Body: raw + JSON (application/json)
  - Body Content: `{ "text": "Hi again, World" }`
- Delete a message with:
  - URL: http://localhost:3000/messages/1
  - Method: DELETE
