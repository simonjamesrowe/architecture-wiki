# Jenkins X Setup

### Clone the Dev Environment Git repository

```
git clone https://github.com/simonjamesrowe/environment-simonjamesrowe-dev.git
```

### Boot Jenkins X

```
jx boot
```


### Enable certain objects to be replicated
```
kubectl annotate secret tls-simonjamesrowe-com-p replicator.v1.mittwald.de/replication-allowed=true 
kubectl annotate secret tls-simonjamesrowe-com-p replicator.v1.mittwald.de/replication-allowed-namespaces=jx-staging,jx-production
```