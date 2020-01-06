# Minikube Setup

### Installing Minikube

```
brew install minikube
brew install docker-machine-driver-hyperkit
```

### Starting Minikube

```
minikube start --cpus=4 --disk-size=250g --vm-driver=hyperkit --memory=24000  -p simonjamesrowe --kubernetes-version=1.17.0
```


### Enable Nginx ingress controller

```
minikube addons enable ingress -p simonjamesrowe
```

### Enable port forwarding
```
export POD_NAME=$(kubectl get pods --namespace kube-system -l "app.kubernetes.io/name=nginx-ingress-controller" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward --address=0.0.0.0 $POD_NAME 8443:443 8080:80 -n kube-system > /dev/null &
```

### Install Helm

```
brew install kubernetes-helm
helm repo add codecentric https://codecentric.github.io/helm-charts
```



### Create Image Registry Secret 
Use the below to create an image registry secret. We will need this to pull images from github package registry.

```
kubectl create secret docker-registry regcred --docker-server=docker.pkg.github.com --docker-username=simonrowe --docker-password=******* --docker-email=simon.rowe@gmail.com
```

