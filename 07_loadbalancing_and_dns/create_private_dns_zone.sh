#!/bin/bash

NETWORK=default

gcloud dns managed-zones create testzone --description="this is a test zone" \
 --dns-name=brightkeycloud --networks=$NETWORK --visibility=private
