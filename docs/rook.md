# Installing Rook and Ceph


## Set up directory on host 
```
minikube ssh -p simonjamesrowe
cd /mnt/vda1
sudo mkdir rook
sudo chown docker rook
exit
```

## Create Rook Operator and Ceph Cluster


```
kubectl create -f kube/rook/common.yaml
kubectl create -f kube/rook/operator.yaml 
```

Wait unti the pod rook-ceph-operator is running and the run
```
kubectl apply -f kube/rook/cluster.yaml 
```


## Create Block Storabe that is able to be mounted to a pod
```
kubectl apply -f kube/rook/storageclass.yaml
```

```
kubectl patch storageclass standard -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'


kubectl patch storageclass rook-ceph-block -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

```


