terraform {
  backend "s3" {
    bucket       = "dev-pratap-tf-bucket"
    region       = "ap-southeast-2"
    key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
  }
  required_version = ">=1.14.0"
  required_providers {
    aws = {
      version = ">= 6.23.0"
      source  = "hashicorp/aws"
    }
  }
}
