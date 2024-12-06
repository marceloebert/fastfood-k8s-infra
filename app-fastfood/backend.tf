terraform {
  backend "s3" {
    bucket         = "app-fastfood-terraform-state"   
    key            = "app-fastfood/terraform.tfstate"  
    region         = "us-east-1"              
    encrypt        = true                     
  }
}
