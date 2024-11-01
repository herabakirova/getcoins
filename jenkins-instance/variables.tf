variable "region" {
  type        = string
  default     = "us-east-2"
  description = "provide the region"
}

variable "jenkins_ports" {
  type = list(object({
    from_port = number
    to_port   = number
  }))
  default = [
    { from_port = 8080, to_port = 8080 },
    { from_port = 22, to_port = 22 }
  ]
}

variable "scgrp_jenkins_name" {
  type        = string
  default     = "jenkins-security2"
  description = "provide name for Jenkins security group"
}

variable "key_name" {
  type        = string
  default     = "pubkey"
  description = "provide public key name"
}


variable "path_to_public_key" {
  type        = string
  default     = "/Users/herabakirova/.ssh/id_rsa.pub"
  description = "provide path to public key"
}

variable "path_to_private_key" {
  type        = string
  default     = "/Users/herabakirova/.ssh/id_rsa"
  description = "provide path to private key"
}

variable "instance_type" {
  type        = string
  default     = "t2.xlarge"
  description = "provide instance type"
}

variable "jenkins_name" {
  type        = string
  default     = "Jenkins2"
  description = "provide instance name for Jenkins"
}


