terraform {
  required_providers {
    myaws = {
      source = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "myaws" {
  	region = "ap-south-1"
}


