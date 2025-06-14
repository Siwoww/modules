terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = ">= 5.100"
        main_region = var.region
    }
  }
}