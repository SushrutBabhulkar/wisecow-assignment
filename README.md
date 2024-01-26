#Wisecow-assignment

Problem Statement 1:
Title: Containerisation and Deployment of Wisecow Application on Kubernetes

End Goal: The successful containerisation and deployment of the Wisecow application to the Kubernetes environment with an automated CI/CD pipeline and secured with TLS communication.

Approach and Solution: Each and every step of the deployment process is performed on Github Actions Runner.
    The script .github/workflows/.yml gets trigger when there someone pushes the code to main branch or Trigger the Github action manually.
    First of all, it builds the docker image with the Dockerfile present in repo then pushes image to dockerhub.
    At Second step, it checks for the installation of minikube, if not present then installs it, along with kubectl.
    Next, it starts the minikube cluster with the ingress addon enabled.
    After starting the cluster, It creates the Deployment with the help of Deployment.yml.
    Next, it creates the service for the Deployment using Service.yml
    Next, Generates the TLS certificate using openssl and creates the k8s secret.
    Second Last stage, is updating the file ingress.yml and creating the ingress for the service using k8s secret. Thus, securing the service with TLS.
    At last, it shows the output using curl command. 

Output: 
![image](https://github.com/SushrutBabhulkar/wisecow-assignment/assets/67704060/7d3eec6e-4445-4d17-834d-07191c652a59)

Problem 2 Link: https://github.com/SushrutBabhulkar/AccuKnox-Assignment
