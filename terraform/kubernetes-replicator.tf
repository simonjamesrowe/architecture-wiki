resource "helm_release" "kubernetes-replicator" {
  name      = "kubernetes-replicator"
  namespace = local.namespaces[0]

  repository = "https://helm.mittwald.de"
  chart      = "kubernetes-replicator"
}