#!/bin/bash

PROJECT=example-project
USER='user:testemail@gmail.com'
ROLE='roles/compute.admin'

gcloud projects add-iam-policy-binding $PROJECT \
--member=$USER --role=$ROLE

