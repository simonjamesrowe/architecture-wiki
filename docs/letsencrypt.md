# Lets Encrypt Certificates managed by [Cert Manager](https://cert-manager.io/}

1. Create new namespace

```
kubectl create namespace cert-manager
```

2. Install Certmanager and depencies

```
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.12.0/cert-manager.yaml
```

3. Apply Issuer and Certificate - this will store the tls cert in a kube secret

```
kubectl apply -f kube/certs.yml
```
