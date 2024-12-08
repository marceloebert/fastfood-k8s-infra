resource "null_resource" "apply_metrics" {
  depends_on = [null_resource.configure_kubeconfig]

  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/YAML/metrics.yaml --validate=false"
  }
}
