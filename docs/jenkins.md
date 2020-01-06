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

### Create a new service for dynamic agents
When new pods are spun up as dynamic agents, they will need to connect back to the master node with both ports 8080 and 50000.

Create a service that allows this:
```
kubectl apply -f kube/jenkins-service.yml
```

### Upgrading Helm Chart

```
helm install jenkins -f charts/jenkins-values.yml codecentric/jenkins
```

