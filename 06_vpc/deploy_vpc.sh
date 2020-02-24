#!/bin/bash

#this script takes slightly over 1 minute to run from a laptop using Cloud SDK
NETWORK=demo-sdk-vpc

#Create the network
gcloud compute networks create $NETWORK --bgp-routing-mode=global --subnet-mode=custom

#Create the subnets
gcloud compute networks subnets create us-east1 --network=$NETWORK --range=10.0.1.0/24 --region us-east1
gcloud compute networks subnets create us-west1 --network=$NETWORK --range=10.0.2.0/24 --region us-west1

#Create firewall rules
#This rule allows instances to communicate with each other on all protocols/ports
gcloud compute firewall-rules create internal-all-traffic --network $NETWORK --allow tcp,udp,icmp --source-ranges 10.0.1.0/24,10.0.2.0/24 
#This rule allows inbound ssh on instances with an ssh tag for use with Cloud Console 
gcloud compute firewall-rules create inbound-ssh --network $NETWORK --allow tcp:22 --source-ranges 0.0.0.0/0 --target-tags=ssh
#This rule allows inbound http traffic to instances with a tag of http-server
gcloud compute firewall-rules create inbound-http --network $NETWORK --allow tcp:80 --source-ranges 0.0.0.0/0 --target-tags=http-server
