resource "random_password" "mongo_password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "kubernetes_secret" "mongo_credentials" {

  metadata {
    name = local.mongo_secret
    annotations = {
      "replicator.v1.mittwald.de/replication-allowed" : "true"
      "replicator.v1.mittwald.de/replication-allowed-namespaces" : ".*"
    }
    namespace = local.namespaces[0]
  }

  data = {
    mongodb-user          = local.mongo_username
    mongodb-password      = random_password.mongo_password.result
    mongodb-root-password = random_password.mongo_password.result
  }

  type = "Opaque"
}