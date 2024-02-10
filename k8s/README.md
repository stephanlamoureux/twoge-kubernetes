# Twoge

after ssh'ing into the EC2 instance, set up namespace:

```sh
sudo -u steve bash
cd steve
export KUBECONFIG=config.yml
kubectl config set-context --current --namespace=steve
```

Apply all files:

```sh
kubectl apply -f twoge-kubernetes/k8s
```

Get the DNS address for the app. Copy the external IP from the LoadBalancer service:

```sh
kubectl get all -n steve
```

To see the readiness probe in action:

```sh
kubectl get logs <pod-name> -n steve
```

Delete everything in the namespace:

```sh
 kubectl delete --all -f twoge-kubernetes/k8s -n steve
 ```
