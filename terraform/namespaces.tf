resource "kubernetes_namespace" "app_support" {
  for_each = toset(local.namespaces)
  metadata {
    annotations = {
      name = each.value
    }

    name = each.value
  }
}