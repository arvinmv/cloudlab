variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the EC2 key pair to use"
  type        = string
  default     = "jenkins"
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access Jenkins"
  type        = list(string)
}