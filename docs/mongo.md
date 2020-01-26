# Installing MongoDB

## Set up a Persistent Volume

To set up a persistent volume on minikube run the following command:

```
kubectl apply -f kube/mongo-pv.yml
```

## To install the mongo helm chart

```
helm upgrade --install mongo -f charts/mongo-values.yml --set mongodbRootPassword=********** stable/mongodb
```
