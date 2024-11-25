## Requisites

- Minikube
- Kubectl


## Setup Minikube
Start Minikube with:
```
minikube start
```

## Deploy App
Run the following commands to deploy your application:

```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

## Access
Since we used a `NodePort` service, you can access your application by finding out the allocated node port:
```
minikube service nginx-service --url
```

## AWS Ingress Mimic

```
minikube addons enable ingress
```
```
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: example-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - host: hello-world.info
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: nginx-service
            port:
              number: 80
```
```
kubectl apply -f ingress.yaml
```