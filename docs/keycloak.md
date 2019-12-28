# Keycloak Setup

### Set up secrets

```
kubectl apply -f kube/keycloak-secrets.yml
```

### Starting Keycloak

```
helm install keycloak -f charts/keycloak-values.yml codecentric/keycloak
```
