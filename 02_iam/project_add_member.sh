#!/bin/bash

PROJECT=brightkey-project
USER='user:arpcefxl@gmail.com'
ROLE='roles/compute.admin'

gcloud projects add-iam-policy-binding $PROJECT \
--member=$USER --role=$ROLE

