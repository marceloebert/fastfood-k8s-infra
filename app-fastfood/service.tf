resource "kubernetes_manifest" "service" {
  manifest = yamldecode(file("${path.module}/YAML/service.yaml"))
}
