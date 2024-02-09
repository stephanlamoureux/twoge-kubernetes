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
