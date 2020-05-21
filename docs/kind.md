# Installing Kind K8s (https://kind.sigs.k8s.io/)

## Install Kind via homebrew
```
brew install kind
```

## Create a kind cluster
```
kind create cluster --config kube/kind-cluster.yml
```

## Install the Nginx Ingress Controller
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
```

### Enable Ngrock http tunnel
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
