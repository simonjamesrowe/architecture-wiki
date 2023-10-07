resource "helm_release" "mongo" {
  name      = "mongo"
  namespace = local.namespaces[0]

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mongodb"
  version    = "12.1.31"

  values = [
    templatefile("helm/mongo.yaml", {
      existingSecret = local.mongo_secret
      username       = local.mongo_username
    })
  ]

}