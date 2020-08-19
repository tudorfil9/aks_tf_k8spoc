
The app will be running at [http://localhost:5000](http://localhost:5000), and the results will be at [http://localhost:5001](http://localhost:5001).

Architecture
-----

![Architecture diagram](architecture.png)

* A Python webapp which lets you vote between two options
* A Redis queue which collects new votes
* A Java worker which consumes votes and stores them in…
* A Postgres database backed by a Docker volume
* A Node.js webapp which shows the results of the voting in real time


<h1>Project Structure</h1>
<h1>Semantically marked-up ASCII art tree structure</h1>
<h2>ASCII art</h2>
<pre>


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