#!/bin/bash
NAMESPACE=$1
INGRESS_NAME=$2
SERVICE_NAME=$3
DEPLOYMENT_NAME=$4






# create namespace if doesn't exists
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

# Create ingress, service and deployment
kubectl apply -f $INGRESS_NAME --namespace $NAMESPACE
kubectl apply -f service.yml --namespace $NAMESPACE
kubectl apply -f deployment.yml --namespace $NAMESPACE

 
