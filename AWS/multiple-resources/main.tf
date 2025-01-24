provider "aws" {
    region = "us-west-2"
}

# Create a list of IAM accounts from the terraform.tfvars file

resource "aws_instance" "example" {
    count         = 4
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"

    tags = {
        Name = "example-instance-${count.index}"
    }
}

resource "aws_iam_user" "iam-users" {
    for_each = var.iam_accounts

    name = each.key
}

output "instance_public_dns" {
    value = [for instance in aws_instance.example : instance.public_dns]
}