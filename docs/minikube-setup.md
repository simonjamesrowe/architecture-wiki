# Minikube Setup

### Installing Minikube

```
brew install minikube
brew install docker-machine-driver-hyperkit
```

### Starting Minikube

```
minikube start --cpus=8 --disk-size=250g --vm-driver=hyperkit --memory=24000  -p simonjamesrowe --kubernetes-version=1.18.0
```


### Enable Nginx ingress controller

```
minikube addons enable ingress -p simonjamesrowe
```

### Enable Nginx proxy server
```
cd reverse-proxy
docker-compose up -d
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

