
# Full Process

* Start up DockerDesktop
* Click on Settings
* Click on Kubernetes
* Ensure the cluster starts and runs

* build the Docker image
```
docker build -t recommendation-service:latest .
```

* start a container from the image
```
docker run -p 8080:8080 recommendation-service
```


#  Deploy to Kubernetes

```
kubectl apply -f deployment.yml
kubectl apply -f service.yml
```


# Verification commands

```
kubectl get pods
kubectl describe pod <podname>
kubectl logs <podname>
kubectl get deployments
kubectl get deployment recommendation-service
kubectl get svc
kubectl get services
kubectl get service recommendation-service

```

