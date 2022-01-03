terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
  backend "s3" {
    bucket = "mystateterraform"
    key    = "dynamic-subnet"
    region = "us-east-1"
  }
}