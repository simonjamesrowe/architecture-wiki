# Installing MongoDB

### Set up a Persistent Volume

To set up a persistent volume on minikube run the following command:

```
kubectl apply -f kube/mongo-pv.yml
```

### To install the mongo helm chart

```
helm upgrade --install mongo -f charts/mongo-values.yml --set mongodbRootPassword=********** stable/mongodb
```         


### Set up port forwarding
```
kubectl port-forward svc/mongodb 27017:27017 --address 192.168.0.21,127.0.0.1,localhost &
```
