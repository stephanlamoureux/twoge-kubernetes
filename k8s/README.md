# Twoge

```sh
kubectl apply -f .
```

```sh
minikube service twoge-service --url -n steve
```

To see the readiness probe in action:

```sh
kubectl get logs <pod-name> -n steve
```

Test data persistence:

Create a post on twoge, and then delete the pods:

```sh
kubectl delete pods <pod 1> <pod 1> -n steve
```

delete everything in the namespace:

```sh
 kubectl delete --all -f . -n steve
 ```
