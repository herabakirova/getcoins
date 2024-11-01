variable "region" {
  type        = string
  default     = "us-east-2"
  description = "provide the region"
}

variable "vpc_name" {
  type        = string
  default     = "myvpc"
  description = "provide vpc name"
}

variable "cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "provide the cidr block"
}

variable "internetgtw_name" {
  type        = string
  default     = "internetgtw"
  description = "provide internet gateway name"
}

variable "rt_cidr" {
  type        = string
  default     = "0.0.0.0/0"
  description = "provide route table cidr block"
}

variable "rt_name" {
  type        = string
  default     = "route-table"
  description = "provide route table name"
}

variable "cluster_name" {
  type        = string
  default     = "mycluster"
  description = "provide cluster name"
}

variable "vpc_securitygrp_name" {
  type        = string
  default     = "securitygrp-myvpc"
  description = "description"
}

variable "ports" {
  type = list(object({
    from_port = number
    to_port   = number
  }))
  default = [
    { from_port = 80, to_port = 80 },
    { from_port = 22, to_port = 22 }
  ]
}

variable "subnet" {
  type = list(object({
    cidr        = string
    subnet_name = string
    subnet_az   = string
  }))
  default = [
    { cidr = "10.0.1.0/24", subnet_name = "subnet1", subnet_az =  "us-east-2a" },
    { cidr = "10.0.2.0/24", subnet_name = "subnet2", subnet_az =  "us-east-2b" }
  ]
}
