terraform {
  cloud {
    organization = "organization-name"
    workspaces {
      name = "learn-terraform-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami = "ami-830c94e3"
  # Changing the instance type later on tells terraform to destroy the old instance and create a new one with the new AMI (instance type cannot be changed after creation)
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
