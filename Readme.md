CAPSTONE PROJECT - CLOUD DEVOPS NANODEGREE [![CircleCI](https://dl.circleci.com/status-badge/img/gh/amandeepsinghahuja/webapp-color/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/amandeepsinghahuja/webapp-color/tree/master)

### Project Submission : Amandeep Singh Ahuja
### Details :
* Builds and Deploys a **Sample Web Application** in **Python** which displays a **colored page** passed to it during build( or random otherwise ).
* It is exposed on port 8080 by default.
* It displays the color and version details on URI **/color** and **/version** respectively
* A **Dockerfile** is included in the repo which can be used to build the app docker image.
* The project can also be integrated with CircleCi using the **.cricleci/config.yml** file.
* An **app_properties.txt** file is also provided in the repo which could be used to pass in custom parameters to our Dockerfile. 
  It also contains parameters to supply for a second app deployment using Rolling Update Strategy.
* The CircleCi Integration Includes the following steps :
  - Code Linting and Build
  - Build and Publish Docker Image (using APP parameters from app_properties.txt )
  - Create an **AWS EKS ( Elastic Kubernetes Service )** cluster using **eksctl** utility
  - Creating a **Kubernetes Deployment** from the Docker image built earlier
  - Creating a **Load Balancer Service** to expose the Deployment ( Inherently deploys **AWS Elastic Load Balancer** )
  - Smoke Tests to prove Application is successfully deployed
  - Build and Publish a new Docker Image using APP2 parameters app_properties.txt 
  - Update the Kubernetes Deployment created earlier with the new image. **( Showcase Rolling Update Strategy )**
  - Cleanup ( of Old Resources )


### Built With
- [Circle CI](www.circleci.com) - Cloud-based CI/CD service
- [Amazon AWS](https://aws.amazon.com/) - Cloud services
- [AWS CLI](https://aws.amazon.com/cli/) - Command-line tool for AWS
- [eksctl](https://eksctl.io/) - Infrastrcuture as code for AWS EKS