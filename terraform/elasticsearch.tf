resource "helm_release" "elastic_search" {
  name      = "elasticsearch"
  namespace = local.namespaces[0]

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "elasticsearch"
  version    = "19.13.0"

  values = [
    templatefile("helm/elasticsearch.yaml", {})
  ]

}