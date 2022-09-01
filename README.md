# CI/CD Pipelines

![CICD](https://user-images.githubusercontent.com/99980305/187885336-6fb1e9e2-840f-46c9-a8aa-34075012512a.png)

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
