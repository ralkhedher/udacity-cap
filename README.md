# Udacity Capstone project by Reema
## Introduction 
This project is part of the requirement to successfully graduate from the __Udacity__ *Nanodegree* for _Cloud DevOps_. 
## Stack
[] Flask app
[] K8s
[] CircleCI
[] Docker

## Project Structure


## Verifying
### Get link to the application
`$ kubectl get services -l app=capstone --output jsonpath='{.items[].status.loadBalancer.ingress[].hostname}' `
With the link that is generted, paste it to your browser URL, output looks like.\
![Success](screenshots/success.png)