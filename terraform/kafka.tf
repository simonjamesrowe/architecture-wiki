resource "helm_release" "kafka" {
  name      = "kafka"
  namespace = local.namespaces[0]

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "kafka"
  version    = "25.3.1"

  values = [
    templatefile("helm/kafka.yaml", {})
  ]

}