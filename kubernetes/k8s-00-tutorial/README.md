It's basically the [Using kubectl to Create a Deployment](https://kubernetes.io/docs/tutorials/kubernetes-basics/deploy-app/deploy-intro/).

Initialize the cluster:
```
minikube start
```

Create the example deployment:

```
kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1
```

In another terminal run the following command to access the cluster.

```
kubectl proxy 
```

Wait until the container it's fully running:

```
kubectl get pods
```

Expected output it's like this:

```
NAME                                   READY   STATUS    RESTARTS   AGE    IP           NODE       NOMINATED NODE   READINESS GATES
kubernetes-bootcamp-68cfbdbb99-hnhxq   1/1     Running   0          100s   10.244.0.3   minikube   <none>           <none>
```

Once that's completed, execute the following command:


```
curl http://localhost:8001/version
```


```
{
  "major": "1",
  "minor": "31",
  "gitVersion": "v1.31.0",
  "gitCommit": "9edcffcde5595e8a5b1a35f88c421764e575afce",
  "gitTreeState": "clean",
  "buildDate": "2024-08-13T07:28:49Z",
  "goVersion": "go1.22.5",
  "compiler": "gc",
  "platform": "linux/arm64"
}
```

