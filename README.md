# Here's how to install and run the Dynatrace Platform Workshop!

## Workshop Format
* This workshop is intended to be a hands on introduction to the latest Dynatrace platform.
* Audience: Existing Dynatrace customers and late stage prospects (Intermediate Level Workshop).
* Time: 2.5-4 Hours depending on how many labs you want to cover.
* Present a 30 minute "Getting to know the new Dynatrace/Platform Update" presentation.
   * https://dynatrace-my.sharepoint.com/:p:/p/jason_ostroski/EfKMF8gLkyVAqeTT753PwPEB2OlbRhS7ldyafuuamzRfxQ?e=hYDk36
* Get everyone logged in and run through the Workshop: Intro and Logs Notebook
* Take a break half way through (great time to catch up anyone that had issues)
* "Choose your own adventure" - Let the attendees vote on which other labs to do
  * Biz Events
  * AppSec
  * Forecasting and Predictive Automation
  * Site Reliability Guardian
* Wrap up with 10 minutes on Davis Copilot & Natural Language Query > DQL. "You as powerusers will still find DQL very useful, but we don't expect you to teach everyone in your org DQL. We are making it much easier for any user, techincal or not, to get answers from Dynatrace." 
* Leave the lab environment up and running for 1-2 weeks after so users can play around and try the other labs.
* I also encourage the users to leverage the lab evironment for running through the Learn DQL App and DQL DTU course/labs
  * https://university.dynatrace.com/ondemand/course/39387

## Requirements
* Dynatrace SaaS Tenant (with latest Dynatrace/Grail)
  * Dynatrace AppSec RVA Turned On: https://docs.dynatrace.com/docs/shortlink/vulnerability-analytics
* K8s cluster
  * Tested Specs: 3 Nodes	24 vCPU	96 GB	RAM
  * You could probably get away with a smaller cluster. I recently removed EasyTravel and the labs only use EasyTrade and HipsterShop, but I have not yet tested this with less resources. 
 
## Setup
* Spin up the K8s cluster and configure outbound rules for OneAgent traffic
* Install the OneAgent Operator and connect the K8s integration
* Clone Git Repo
  
```
git clone https://github.com/JasonOstroski/platformworkshop2023.git
```

* Install EasyTrade and HipsterShop

```
kubectl create namespace easytrade
kubectl apply -f ./easytrade/manifests

kubectl create namespace hipstershop
kubectl apply -f ./hipstershop/manifests
```
* Set a log ingest rule to ingest all logs
* Create SLOs
* Create Biz Events (optional)
  * EasyTrade's headlessloadgen creates the following biz events without needing any configuration in the Dynatrace UI: com.easytrade.buy.start, com.easytrade.buy.finish, com.easytrade.deposit.start, com.easytrade.sell.start, com.easytrade.sell.finish
  * While the activities do not require additional biz events, it's nice to have a few configured in the UI to show users how they would be configured. Swap out the tenant ID and API token (scope: Write Configurations) and use the API curl snippets here to configure additonal biz events: https://github.com/JasonOstroski/platformworkshop2023/blob/main/guidesandcontent/bizevents/EasyTradeBizEvents
* Assign users to a group with the following policies:
  * AppEngine - User
  * AutomationEngine - Automation admin
  * Environment role - Access environment
  * Environment role - View logs
  * Environment role - View security problems
  * Environment role - View sensitive request data
  * Settings Reader
  * Storage All Grail Data Read
  * Storage All System Data Read
  * Storage Bizevents Read
  * Storage Default Monitoring Read
  * Storage Entities Read
  * Storage Events Read
  * Storage Logs Read
  * Storage Metrics Read
  * Storage Spans Read
* Upload and share Dashboards & Notebooks in this repo
  * The notebooks will be the lab guides/answer key for the workshop. Share them as view only with the group you created.
  
