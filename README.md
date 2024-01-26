# Wisecow-assignment

Problem Statement 1:
Title: Containerisation and Deployment of Wisecow Application on Kubernetes

End Goal: The successful containerisation and deployment of the Wisecow application to the Kubernetes environment with an automated CI/CD pipeline and secured with TLS communication.

Approach and Solution: Each and every step of the deployment process is performed on Github Actions Runner. <br />
    The script .github/workflows/.yml gets trigger when there someone pushes the code to main branch or Trigger the Github action manually. <br />
    First of all, it builds the docker image with the Dockerfile present in repo then pushes image to dockerhub. <br />
    At Second step, it checks for the installation of minikube, if not present then installs it, along with kubectl. <br />
    Next, it starts the minikube cluster with the ingress addon enabled. <br />
    After starting the cluster, It creates the Deployment with the help of Deployment.yml. <br />
    Next, it creates the service for the Deployment using Service.yml <br />
    Next, Generates the TLS certificate using openssl and creates the k8s secret. <br />
    Second Last stage, is updating the file ingress.yml and creating the ingress for the service using k8s secret. Thus, securing the service with TLS. <br />
    At last, it shows the output using curl command. <br />

Output: <br />

![image](https://github.com/SushrutBabhulkar/wisecow-assignment/assets/67704060/7992d27b-5bd6-45ed-b580-8d612ff1b93d)


Problem 2 Link: https://github.com/SushrutBabhulkar/AccuKnox-Assignment
