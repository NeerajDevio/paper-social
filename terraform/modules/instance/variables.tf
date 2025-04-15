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
  description = "ID of the existing VPC"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet in the VPC"
  type        = string
}

variable "instance_count" {
 description = "Count of the instance"
 type        = number
}
