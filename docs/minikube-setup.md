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

### Creating Load Balancer Service for Ingress Controller

```
kubectl apply -f kube/ingress-svc.yml
```

### Enable Nginx ingress controller

```
minikube addons enable ingress -p simonjamesrowe
minkkube tunnel -p simonjamesrowe
```

### Install Helm

```
brew install kubernetes-helm
helm repo add codecentric https://codecentric.github.io/helm-charts
```
