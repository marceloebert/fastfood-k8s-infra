resource "kubernetes_manifest" "deployment" {
  manifest = yamldecode(file("${path.module}/YAML/deployment.yaml"))
  
  field_manager {
    name             = "terraform"
    force_conflicts  = true
  }
}

