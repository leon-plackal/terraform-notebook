# environment variables
variable "region" {
    description = "AWS region"
}
variable "project_name" {
    description = "Project name"
}
variable "environment" {
    description = "Environment name"
  
}

# VPC variables
variable "vpc_cidr" {
    description = "VPC CIDR block"
}
variable "public_subnet_az1_cidr" {
    description = "Public subnet AZ1 CIDR block"
}
variable "public_subnet_az2_cidr" {
    description = "Public subnet AZ2 CIDR block"
}
variable "private_app_subnet_az1_cidr" {
    description = "Private app subnet AZ1 CIDR block"
}
variable "private_app_subnet_az2_cidr" {
    description = "Private app subnet AZ2 CIDR block"
}
variable "private_data_subnet_az1_cidr" {
    description = "Private data subnet AZ1 CIDR block"
}
variable "private_data_subnet_az2_cidr" {
    description = "Private data subnet AZ2 CIDR block"
}