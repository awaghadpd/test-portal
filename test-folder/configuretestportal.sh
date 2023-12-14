#!/bin/bash
NAMESPACE=$1
SERVICE_NAME=$2
INGRESS_NAME=$3
DEPLOYMENT_NAME=$4






# create namespace if doesn't exists
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

# Create ingress, service and deployment
kubectl apply -f $INGRESS_NAME --namespace $NAMESPACE
kubectl apply -f $SERVICE_NAME --namespace $NAMESPACE
kubectl apply -f $DEPLOYMENT_NAME --namespace $NAMESPACE

 
