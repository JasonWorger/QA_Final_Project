variable "environment" {
  description = "The environment which this infrastructure will be running on."
  default = "This variable must be defined at environment level."
}

variable "vpc_id" {
  description = "The ID of the VPC belonging to each subnet."
  default = "This variable must be defined at environment level."
}

variable "private_eks_subnet_id" {
  description = "The AWS ID belonging to our private eks subnet."
  default     = "This variable must be defined at environment level."
}

variable "public_subnet_id" {
  description = "The AWS ID belonging to our public subnet."
  default     = "This variable must be defined at environment level."
}