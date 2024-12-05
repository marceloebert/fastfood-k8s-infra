resource "aws_ecr_repository" "app_fastfood" {
  name                 = "fiap-software-architecture-fastfood" 
  force_delete = true
  image_tag_mutability = "MUTABLE"     
  image_scanning_configuration {
    scan_on_push = true               
  }

  tags = {    
    Application = "Fastfood"
  }
}
