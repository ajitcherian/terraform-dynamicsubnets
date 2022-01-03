variable "project-name" {
  type        = string
  description = "Project name"
}

variable "stack" {
  type        = string
  description = "Project stack"
}

variable "owner" {
  type        = string
  description = "Project owner name"
}

variable "region" {
  type        = string
  description = "region"
}

variable "public-subnet" {
  type        = number
  description = "Number of public subnet needed"
  default     = 0
}

variable "private-subnet" {
  type        = number
  description = "Number of private subnet needed"
  default     = 0
}
variable "vpc-cidr" {
  type        = string
  description = "VPC cidr block"
}

variable "newbits" {
  type        = number
  description = "number of additional bits with which to extend the vpc cidr"
}

variable "tls-ports" {
  type        = list(number)
  description = "Allow TLS port all traffic access"
}