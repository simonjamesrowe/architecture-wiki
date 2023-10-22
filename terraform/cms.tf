resource "helm_release" "cms" {
  name      = "cms"
  namespace = local.namespaces[1]

  repository = "https://helmcharts.gruntwork.io"
  chart      = "k8s-service"
  version    = "0.2.24"

  values = [
    templatefile("helm/cms.yaml", {
      domain            = "admin-dev.simonrowe.dev"
      database_name     = "cms-staging"
      database_username = local.mongo_username
    })
  ]

}