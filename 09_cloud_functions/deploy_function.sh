#!/bin/bash

#you can follow instructions from the following page as well:
#https://cloud.google.com/functions/docs/first-python

#Download the function from here:
#https://github.com/GoogleCloudPlatform/python-docs-samples/blob/master/functions/helloworld/main.py
#or clone the entire repo:
#git clone https://github.com/GoogleCloudPlatform/python-docs-samples.git

#Modify the function if you want to make it unique, otherwise:
#From the same directory as main.py
#Create a new file requirements.txt with the following:
#Flask==1.0.2

#Then issue the following command:
gcloud functions deploy hello_http --runtime python37 --trigger-http --allow-unauthenticated

#The output of the above command will include the URL of the function, something like this:
#https://us-central1-brightkey-project.cloudfunctions.net/hello_http

#You can also issue a command to describe the function to locate the URL as follows:
gcloud functions describe hello_http

