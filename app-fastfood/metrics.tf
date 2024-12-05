resource "null_resource" "apply_metrics" {
  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/YAML/metrics.yaml"
  }
}
