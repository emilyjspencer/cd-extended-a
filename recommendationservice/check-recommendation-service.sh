#!/bin/bash

set -e

SERVICE_NAME="recommendation-service"
NAMESPACE="default"  

echo "🔍 Checking Deployment status..."
kubectl get deployment $SERVICE_NAME -n $NAMESPACE

echo -e "\n📦 Listing pods..."
kubectl get pods -l app=recommendation -n $NAMESPACE

POD_NAME=$(kubectl get pods -l app=recommendation -n $NAMESPACE -o jsonpath='{.items[0].metadata.name}')

echo -e "\n📜 Showing logs from pod: $POD_NAME"
kubectl logs $POD_NAME -n $NAMESPACE --tail=20

echo -e "\n🌐 Checking Service details..."
kubectl get svc $SERVICE_NAME -n $NAMESPACE

echo -e "\n🧪 Launching test pod to validate service connectivity..."
kubectl run debug --rm -it --restart=Never --image=busybox -n $NAMESPACE --command -- sh
  echo '🔗 Resolving DNS for $SERVICE_NAME...';
  nslookup $SERVICE_NAME;
  echo '📶 Sending test request to $SERVICE_NAME...';
  wget -qO- http://$SERVICE_NAME;
"

echo -e "\n✅ All checks completed."