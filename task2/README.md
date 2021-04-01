# Task 2

## Deployment
Create the namespace:
```
kubectl apply -f src/cowsay.namespace.yaml
```
```
kubectl get ns
```
```
NAME              STATUS   AGE
cowsay            Active   11s
default           Active   149m
kube-node-lease   Active   150m
kube-public       Active   150m
kube-system       Active   150m
```
Deploy the pod:
```
kubectl apply -f src/cowsay.deployment.yaml
```

```
kubectl get po -n cowsay
```
```
NAME                                 READY   STATUS    RESTARTS   AGE
cowsay-deployment-6f9f8bfb7d-p4qpz   2/2     Running   0          18s
```
Create the service:
```
kubectl apply -f src/cowsay.service.yaml
```
```
kubectl get svc -n cowsay
```
```
NAME             TYPE           CLUSTER-IP     EXTERNAL-IP   PORT(S)          AGE
cowsay-service   LoadBalancer   10.99.139.97   <pending>     8080:30080/TCP   11s
```

## Testing

```
kubectl get no -o wide
```
```
NAME       STATUS   ROLES                  AGE    VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION       CONTAINER-RUNTIME
m-ak51gi   Ready    control-plane,master   162m   v1.20.5   10.254.0.17   <none>        Ubuntu 18.04.5 LTS   4.15.0-140-generic   docker://20.10.5
w-ak51gi   Ready    <none>                 160m   v1.20.5   10.254.0.66   <none>        Ubuntu 18.04.5 LTS   4.15.0-140-generic   docker://20.10.5
```
```
curl 10.254.0.17:30080
```
```
 _________________________________________
/ Any sufficiently advanced technology is \
| equivalent to magic. -Sir Arthur C.     |
\ Clarke-                                 /
 -----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```
```
curl 10.254.0.17:30080
```
```
 _______________________________________
/ Ethics change with technology. -Larry \
\ Niven-                                /
 ---------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

## Clean up
```
kubectl delete ns cowsay
```