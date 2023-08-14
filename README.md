# Here's how to install and run the Dynatrace Platform Workshop!
Note: This is the first iteration of this workshop. There are many updates I'd like to do to reduce the footprint (maybe only use 1-2 app instead of 3) and to build out the use cases further. 

## Workshop Format
* This workshop is intended to be a hands on introduction to Grail and the new Dynatrace platform.
* Time: 2.5-4 Hours depending on how many labs you want to cover.
* Present a 30 minute "Getting to know the new Dynatrace/Platform Update" presentation.
   * https://dynatrace-my.sharepoint.com/:p:/p/jason_ostroski/EfKMF8gLkyVAqeTT753PwPEB2OlbRhS7ldyafuuamzRfxQ?e=hYDk36
* Get everyone logged in and run through the Workshop: Intro and Logs Notebook
* Take a break
* "Choose your own adventure" - Vote on which other labs you work on
 * Biz Events
 * AppSec
 * Forecasting and Predictive Automation
 * Site Reliability Guardian
* Wrap up with 10 minutes on Davis Copilot & Natural Language Query > DQL. "You as power users will still find DQL very useful, but we don't expect you to teach everyone in your org DQL. We are making it much easier for any user, techincal or not, to get answers from Dynatrace." 
* Leave the lab environment up and running for 1-2 weeks after so users can play around and try the other labs.
* I also encourage the users to leverage the lab evironment for running through the DQL DTU course/labs
  * https://university.dynatrace.com/ondemand/course/39387

## Requirements
* Dynatrace SaaS Tenant with Grail/Platform
* K8s cluster
  * Tested Specs: 3 Ndoes	24 vCPU	96 GB	RAM
 
## Setup
* Spin up the K8s cluster and configure outbound rules for OneAgent traffic
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
* Give Users Permissions/Policies
  
