terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.100"
        #region = var.region
    }
  }
}