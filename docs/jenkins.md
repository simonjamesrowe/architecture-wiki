# Jenkins Setup

### Set up new namespace service account

```
kubectl apply -f kube/rbac.yml
```

### Starting Jenkins

```
helm install jenkins -f charts/jenkins-values.yml codecentric/jenkins
```

### Getting the one time passcode for setup

```
export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=jenkins,app.kubernetes.io/instance=jenkins" -o jsonpath="{.items[0].metadata.name}")
kubectl exec --namespace default "$POD_NAME" cat /var/jenkins_home/secrets/initialAdminPassword
```

### Add entry to hosts file

```
sudo echo "$(minikube ip -p simonjamesrowe) build.simonjamesrowe.com" >> /etc/hosts
```

### Upgrading Helm Chart

```
helm install jenkins -f charts/jenkins-values.yml codecentric/jenkins
```
