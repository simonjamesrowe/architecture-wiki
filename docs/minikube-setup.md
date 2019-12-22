# Minikube Setup

### Installing Minikube
```
brew install minikube
brew install docker-machine-driver-hyperkit
```

### Starting Minikube
 ```
 minikube start --cpus=4 --disk-size=50g --vm-driver=hyperkit --memory=24000 --nfs-share=/Users/**/**/kube
 ```

 ### Enable Nginx ingress controller
 ```
 minikube addons enable ingress
 ```