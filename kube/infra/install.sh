kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
helm repo add jx3 https://jenkins-x-charts.github.io/repo
helm repo add banzaicloud-stable https://kubernetes-charts.banzaicloud.com
helm repo add jetstack https://charts.jetstack.io
helm repo update
kubectl create ns cert-manager
helm install cert-manager --namespace cert-manager --version v1.6.1 jetstack/cert-manager --set installCRDs=true
