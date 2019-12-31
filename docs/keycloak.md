# Keycloak Setup

### Set up secrets

```
kubectl apply -f kube/keycloak-secrets.yml
```

### Set up the Persistent Volume (for postgresql)

```
kubectl apply -f kube/keycloak-psql-pv.yml
```

### Starting Keycloak

```
helm install keycloak -f charts/keycloak-values.yml codecentric/keycloak
```

### Updating chart

```
helm install keycloak -f charts/keycloak-values.yml codecentric/keycloak
```
