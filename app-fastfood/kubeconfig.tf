resource "null_resource" "configure_kubeconfig" {
  provisioner "local-exec" {
    command = "aws eks update-kubeconfig --region us-east-1 --name ${data.aws_eks_cluster.eks.name}"
  }
}
