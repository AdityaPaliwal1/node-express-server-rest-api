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


## Build and Run Docker Image
- `docker build -t {imageName} .`
- `docker run -p {hostport}:{containerport} -d {imageName} `

## Test your application locally
- Open docker desktop, click on your defined port
- Example http://localhost:3000

## Build K8s Cluster in AWS using Terraform
- Run command `terraform init` in your terraform code directory
- `terraform init` command prepares your local environment to effectively interact with your      infrastructure defined in config files.
- Run `terraform plan` showing you exactly what changes terraform will make to your infrastructure to achieve desired state.
- Run `terraform apply` is the translets your Iac code into desired infrastructure by communicating with API of your cloud provider (e.g. AWS,GCP).

## Build and Push Docker Image 
- This Repository has a workflow file which builds and push your repo's docker image to docker hub when someone is commiting or push something on master branch.
### GET Routes

- visit http://localhost:3000
  - /messages
  - /messages/1
  - /users
  - /users/1

### Beyond GET Routes

#### CURL

- Create a message with:
  - `curl -X POST -H "Content-Type:application/json" http://localhost:3000/messages -d '{"text":"Hi again, World"}'`
- Delete a message with:
  - `curl -X DELETE -H "Content-Type:application/json" http://localhost:3000/messages/1`

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
