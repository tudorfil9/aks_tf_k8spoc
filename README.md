
The app will be running at [http://localhost:5000](http://localhost:5000), and the results will be at [http://localhost:5001](http://localhost:5001).

Architecture
-----
Application is deployed via AKS control from Kompose CLI. Wrapping via BASH can be done for Rolling deployments to be triggered via Jenkins Pipelines.

![Architecture diagram](architecture.png)

* A Python webapp which lets you vote between two options
* A Redis queue which collects new votes
* A Java worker which consumes votes and stores them in…
* A Postgres database backed by a Docker volume
* A Node.js webapp which shows the results of the voting in real time


<h1>Project Structure</h1>

<pre>

├── .gitignore              - remove hidden .terraform folder with large provider modules.
├── Jenkinsfile             - Jenkins branch pipeline for deployment.
├── LICENCE                 
├── MAINTAINERS             
├── README.md               - This file
├── architecture.png        - Application description. Credit for the application: 
                              https://github.com/eesprit/example-voting-app
├── db-deployment.yaml      - Kubernetes Kompose file converted from Docker-Compose Format
                              This is a deployment description file.
├── deployment.yaml         - K8S KOMPOSE - MAIN deployment file

                              Support for Rolling deployment via:
                                  replicas: 2
                                  strategy:
                                  type: RollingUpdate
                                  rollingUpdate:
                                    maxSurge: 1
                                    maxUnavailable: 25%
                              Rolling deployments can be achieved by Jenkins pipeline and cli control for kubernetes loadBalancer resource.

├── docker-compose.yml      - Original docker-compose.yml which has been converted to k8s kompose
├── redis-deployment.yml    - Redis deployment resource.
├── redis-service.yml       - Redis Service Definition for Kompose
etc.        


result/
├── css/
│   ├── bootstrap.css
│   └── fonts/
├── js/
│

terraform/
├── infra/
│   ├── main.tf
│   ├── output.tf
│   └── terraform.tfvars
├── namespace/
│   ├── main.tf
│   └── namespace.plan
├── network/
│   ├── main.tf
│   └── resources.tf
├── roles/
│   └── main.tf
├── terraform.tfstate

vote/
├── less/
├── js/
├── fonts/
├── dist/
│   ├── css/
│   ├── js/
│   └── fonts/
└── docs/
    └── examples/

worker/
├── less/
├── js/
├── fonts/
├── dist/
│   ├── css/
│   ├── js/
│   └── fonts/
└── docs/
    └── examples/