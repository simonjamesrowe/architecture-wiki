# Installing Kind K8s (https://kind.sigs.k8s.io/)

## Install Kind (need 0.19)
```sh
# For Intel Macs
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.19.0/kind-darwin-amd64
# For M1 / ARM Macs
[ $(uname -m) = arm64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.19.0/kind-darwin-arm64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```

## Create a kind cluster
```
kind create cluster --config kube/kind-cluster.yml
```

## Install the Nginx Ingress Controller
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
```

### Enable Cloudflare
```
nohup ngrok start default &
```
where the ngrok config looks like this: (~/.ngrok2/ngrok.yml)
```
authtoken: fasdfdsafdssdfadsfasd
region: eu
tunnels:
   default:
      proto: tls
      hostname: "*.simonjamesrowe.com"
      addr: "127.0.0.1:443"
   http:
      proto: http
      hostname: "*.simonjamesrowe.com"
      addr: "127.0.0.1:80"
      bind_tls: false
```
