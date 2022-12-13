#! /bin/bash
# create spreasheet that contains the entire project plan ----> https://docs.google.com/spreadsheets/d/1pYLdA0_Y1qFRxfJB1XAqbG9uTMH4bOtcGZQinWYdgek/edit#gid=1348135932
# create a Trello board to keep track of the project's progress ---> https://trello.com/b/xpcRdzSP/ci-cd-project 
# create a GitHub repo for versioning ---> https://github.com/ernynany/CICD-pipeline-Azure/blob/main/README.md  
# create an Azure Cloud shell account, generate "ssh-keygen -t rsa" and copy the public key to your GutHub account ---> nosa.obamwonyi@hotmail.com  
# clone the project repository to Azure cloud shell dev environment
# create a virtual environment for your project
pip install virtualenv # virtualenv installs its own pip version by default.
virtualenv ~/.azure 
source ~/.azure/bin/activate # activae the virtual environment. use deactivate to deactivate the environment 
az login # login to Azure account. az login -u johndoe@contoso.com -p VerySecret nosa.obamwonyi@hotmail.com 
clone the repository and take a screen shot of the clone

# Note: It’s like an intermediary or middleman that enables two different apps to interact and talk to each other. In other words, an API allows users to send requests to a remote data set, and then returns data back to the app in a readable way.

#PROJECT IMPLEMENTATION
Create the project scaffolding in the project folder.

# Scaffolding means creating a temporary structure for your project that you can use as the foundation to develop the real and more complex project. Simply put, scaffolding gives you a quick and simplified (but temporary) structure for your project.

the Scaffolding should consist of:
1. a makefile # a shortcut way to install dependendencies, do linting and testing  ----> Linting is the automated checking of your source code for programmatic and stylistic errors.
the makefile should install, test and lint

2. the app.py # the application code
3. test files
4. requirements.txt # a text file containing all the dependencies to be installed

#Local Testing
run the "make all" command # this will install, lint and test your code in a single command. a remote build server is usually used to achieve this.
                           # This enables us to ensure we don't check in broken code to GitHub as it installs, lints, and tests the code in one command


# Next ---> Configure GitHub Actions to Perform Continous Integration remotely.
# The project code will be tested by GitHub actions upon change events in GitHub.

Note: When you check in your code to a git-based repo, and you need the code to be remotely tested upon any chnage event in the repo, then there need to be a 
SaaS build Service or server (GitHub Actions is an exmaple) and a configuration file that tells the server what to do
This is the defintion of Continous Integration.

What does the build server do?
1. Linting ---> automatically checking your code for programmatic and stylistic errors
2. testing 

Configuring a SaaS build server is the final step of continuous Integration and testing.

# How code can be tested using GitHub Actions
1. Push changes to GitHub ---> make sure GitHub Action is first enabled
2. This changes triggers the GitHib Action container
3. the container in turn runs a series of commands

1. enabled GitHub  Actions
2. copy the file pythonapp.yml to replace the yml file you see there ---> this is responsible for triggering the GitHub action container to perform a set of function
3. push the changes to GitHub and verify that both lint and test steps pass in your project

# Next ---> Continuous Delivery: Final Step of the CI/CD
# this step involves setting up an Azure Pipeline to deploy a flask application to Azure App Service

get the starter code from here ----> https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/app.py
replce the app.py with this starter code

# the CD of flask application using Azure pipeline and Azure App service
from Azure console:
1. enable source control Integration on Azure pipeline 
2. select Azure pipeline to build server
Note: you can also use GitHub Actions to perform CD
https://learn.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python?view=azure-devops&WT.mc_id=udacity_learn-wwl ---> sign in to Azure DevOps organization and create a  project
nosaobamwonyi --> My Azure DevOps  ps organization
create a pipeline ---> 

# THE CD STEPS
1. update your repo with the Flask-starter code