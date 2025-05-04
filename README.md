
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
returns

```
NAME                                      READY   STATUS    RESTARTS   AGE
recommendation-service-5bd7dd8f8d-8rjr4   1/1     Running   0          44s
recommendation-service-5bd7dd8f8d-9pxvf   1/1     Running   0          44s
```


```
kubectl get deployment
kubectl get pods
kubectl get services
kubectl describe pod <podname>
kubectl get svc
```

returns

```
NAME                     TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
kubernetes               ClusterIP   10.96.0.1       <none>        443/TCP   2m31s
recommendation-service   ClusterIP   10.96.104.139   <none>        80/TCP    46s
```