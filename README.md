# CI/CD Pipelines

## What is CI/CD?

It is the combined software practice of continuous integration (CI), continuous delivery (CD) and continuous deployment (CDE). This methodology helps to frequently deliver applications to end-users via the introduction of automation in the stages of the software development lifecycle (SDLC).

## Key Terminology

### CI

- Continuous integration is the practice of automating the integration of code changes from multiple developers into a single software project
- Goal is to deal with bugs quicker, reduce the time for software updates and improve software quality

### CD

- Continuous delivery is the practice of automatically preparing code changes for release
- Following on from CI, all code changes are deployed to a testing environment
- After this stage, the software product will be deployment-ready

### CDE

- Continuous deployment automates the process of deploying code changes directly onto a live environment, so that the software product is visible to the end-usr

### Jenkins

- An open source software tool used to build CICD pipelines

### Webhook

- Automated messages sent from apps when something happens
- In Jenkins, webhooks are a mechanism to automatically trigger the build of a Jenkins project in response to a commit pushed to a Git repository
- Add a webhook by accessing webhooks with repository settings page and then add webhook

## Using Jenkins for CICD

![CICD](https://user-images.githubusercontent.com/99980305/187885336-6fb1e9e2-840f-46c9-a8aa-34075012512a.png)

### Configuring Git and GitHub for Jenkins

- Create a new SSH key pair in the `.ssh` folder with command (found in [this repository](https://github.com/fahimtq1/github_basics)- `ssh-keygen -t rsa -b 4096 -C "(insert your GitHub email)"` 
- Name the keys appropriately
- Navigate to your selected repository 
- Go to Settings -> Deploy keys -> Add deploy key and then paste the public key into this section
- Go to Settings -> Webhooks -> Add webhook and paste the Jenkins URL into Payload URL with the extension "/github-webhook/"

### Job 1

The purpose of this job is to build a continuous integration process to integrate the testing of the commits between localhost - GitHub - Jenkins

- From the main Jenkins Dashboard select New item -> Enter an item name -> Freestyle Project
- This is now the Configuration page
- In General select

1. Discard Old Builds and max 3 builds- this keeps server space free and will delete the oldest build if the number of builds exceeds 3
2. GitHub project and put the HTTPS key of your selected GitHub repository

- In Office 365 Connector select

1. Restrict where this project can be run and Label Expression is sparta-ubuntu-node
2. This ensures the project is run in a specified Agent node

- In Source Code Management select 

1. Git
2. In Repositories, paste the SSH link of the selected repository
3. In Credentials, add the private key 
4. In Branches to build, select main

- In Build Triggers select

1. GitHub hook trigger for GitScm polling- Jenkins will receive a webhook trigger from GitHub and then run the project

- In Build Environment select

1. Provide Node and npm bin/ folder to PATH- this allows the shell to recognise npm commands

- In Build select

1. Add build step -> Execute shell:
```
cd app
npm install && npm install mongoose && npm install express
npm test
```

### Job 2

Repeat the steps in Job 1 and change the following sections:

- Source Code Management 

1. Branches to build to dev
2. Additional Behaviours -> Name of repository- origin -> Branch to merge to- main

- Post-build Actions 

1. Git Publisher -> Push Only if Build Succeeds -> Merge Results




