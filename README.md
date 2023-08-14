# Here's how to install and run the Dynatrace Platform Workshop!
Note: This is the first iteration of this workshop. There are many updates I'd like to do to reduce the footprint (maybe only use 1-2 app instead of 3) and to build out the use cases further. 

## Requirements
* Dynatrace SaaS Tenant with Grail/Platform
* K8s cluster
  * Tested Specs: 3 Ndoes	24 vCPU	96 GB	RAM
 
## Installation
* Spin up the K8s cluster
* Install the OneAgent Operator
* Install the demo apps

```
kubectl create namespace easytrade
kubectl apply -f ./easytrade/manifests

kubectl create namespace easytravel
kubectl apply -f ./easytravel/manifests

kubectl create namespace hipstershop
kubectl apply -f ./hipstershop/manifests
```
* Create SLOs
* Create Biz Events
* Upload Dashboards & Notebooks
