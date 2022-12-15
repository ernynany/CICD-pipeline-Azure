# CICD-pipeline-Azure
Azure DevOps with Udacity - Project 2

Tasks Summary:
- Github actions - Continuous Integration
- Azure pipeline and Azure App service - Continuous Deployment

# Project Plan
## Project Spreadsheet
This Spreadsheet shows a detailed weekly, quarterly and Yearly plan for the Project.
[Spreadsheet link](https://docs.google.com/spreadsheets/d/1pYLdA0_Y1qFRxfJB1XAqbG9uTMH4bOtcGZQinWYdgek/edit?pli=1#gid=1348135932)
## Trello Board
This Trello Board shows a simple work flow of To-dos, In-Progress and Completed Project Tasks
[Trello link](https://trello.com/b/xpcRdzSP/ci-cd-project)

# CI: Set Up Azure Cloud Shell
## Project Cloned Into Azure Cloud Shell
This screenshot shows the cloning of the repo into Azure cloud shell
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/repo_clone.JPG?raw=true)

## Creating a Makefile, Requirements.txt and Virtual Environment
I created a Makefile, requirements.txt in Azure cloud Shell and added the codes shown in the screenshot shown below and saved
![screenshot](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/MAkefile_command.JPG?raw=true)

![screenshot](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/Requriements.JPG?raw=true)

Also, the code shown below was used to create a Python Vurtual Environment. Run the following command ...
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/virt_env.JPG?raw=true)


## Local test
The two screenshots below shows how the project script and the test script were created. it also shows how the make all command was run and the ouput of the test
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/Makefile1.JPG?raw=true)

![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/Makefile2.JPG?raw=true)

# CI: Configure Github Actions
The picture below is a screenshot of passing Actions. A badge is also attached below it
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/pythonapp.JPG?raw=true)

[![Python application test with Github Actions](https://github.com/Uchejen/Project2-azure-cloud-shell/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/Uchejen/Project2-azure-cloud-shell/actions/workflows/pythonapp.yml)


# CD: Continous Delivery Azure Pipeline
Firstly I cloned the Flask Starter code and added it to my Project
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/Starter_code.JPG?raw=true)

## Azure App Services
I replaced the scaffolding code with Flask Machine Learning code and then Authorized Azure App Service
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/webappdeploy.JPG?raw=true)

After the App was deployed, I copied the link of the App in a seperate window to confirm if the App is up and running. The screenshot below shows the result

![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/appworks.JPG?raw=true)

Next, using the "python app.py" command to also test the App
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/pythonapppy.JPG?raw=true)

Using the "./make_predict_azure_app.sh" command to test the app remotely
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/model_loaded.JPG?raw=true)

Using the "az webapp log tail" command to stream the logs from my running application
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/webapp_log_tail.JPG?raw=true)

finally, using the locustfile.py to perform a validation test on the Webapp via load testing
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/locustfile1.JPG?raw=true)


## Azure Pipieline
The following steps were used to set up the Azure Pipeline
- Logged into the Azure Portal, go to Azure Organization and then create a new Project
- From Organization setting, set up new service connection
- Go to Pipeline and create a new pipeline
- click on GitHub Integration and next configure Python to linux Web app on Azure
- Save, run and Validate
The picture below shows the result of the Build and Web App Deployment
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/Azure_pipeline.JPG?raw=true)

The picture below shows the deployed Web App
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/webappdeploy1.JPG?raw=true)

The Picture below shows the Successful build
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/build.JPG?raw=true)

Finally, everything was pushed back to gitHub
![screenshot1](https://github.com/Uchejen/Project2-azure-cloud-shell/blob/main/Screenshots/gitpush.JPG?raw=true)

# Demo Video
The video shows a live demo of the working of the Project
[Demo](https://youtu.be/r6Oxxiq6pDI)


