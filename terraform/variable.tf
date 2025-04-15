variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the existing VPC to launch the EC2 in"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID inside the VPC"
  type        = string
}

variable "instance_count" {
 description = "Count of the instance"
 type 	     = number
}
