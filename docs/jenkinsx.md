# Jenkins X 3 Setup

Install pre-reqs (cert manager and vault)

```shell
cd kube/infra
./install.sh
```

Once things are running there is 2 secrets that need to be created
* aws 
  * secretKey
* mongodb
  * password


Also need to make sure that vault policy is set up:

```
vault auth enable kubernetes
vault write auth/kubernetes/role/jx-vault \
        bound_service_account_names=kubernetes-external-secrets \
        bound_service_account_namespaces='secret-infra' \
        policies=allow_secrets \
        ttl=1440h
```