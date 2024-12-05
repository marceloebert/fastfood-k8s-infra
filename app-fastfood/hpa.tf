resource "kubernetes_manifest" "hpa" {
  manifest = yamldecode(file("${path.module}/YAML/hpa.yaml"))
}
