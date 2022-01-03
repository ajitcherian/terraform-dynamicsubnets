variable "project-name" {
  type        = string
  description = "Project name"
}
variable "stack" {
  type        = string
  description = "Project name environment"
}

variable "owner" {
  type        = string
  description = "Project owner"
}


variable "region" {
  type        = string
  description = "region"
}

/*variable "az-count" {
  type        = string
  description = "number of avaialability zone need"
}*/

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
  #default = [80, 443]
}