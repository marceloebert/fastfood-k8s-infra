resource "kubernetes_manifest" "configmap" {
  manifest = yamldecode(file("${path.module}/YAML/configmap.yaml"))
}
