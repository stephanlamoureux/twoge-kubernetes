# CLI Commands

Apply Manifests:

```sh
kubectl apply -f . -n steve
```

Launch a local server:

```sh
minikube service twoge-service --url -n steve
```

To see the readiness probe in action:

```sh
kubectl logs <pod-name> -n steve
```

Delete pods:

```sh
kubectl delete pods <pod 1> <pod 1> -n steve
```

Delete everything in the namespace:

```sh
 kubectl delete --all -f . -n steve
 ```

Get all of the data about the node including resources being used:

```sh
kubectl describe nodes
```
