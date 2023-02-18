terraform {
  required_version = "=1.3.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUGXJBFE5TO4DTQ44"
  secret_key = "TmEAILzKAMxsn4wXzZTQcsMS7c1cLerDdHJAEJWW"
}



# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "terraform vpc"
  }
}
