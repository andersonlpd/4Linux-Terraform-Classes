variable "vpc-name" {
  type        = string
  description = "Nome da VPC"
  default     = "vpc-terraform"
}

variable "autocreate-subnet" {
  type        = bool
  description = "Criacao automatica da subnet S/N"
  default     = false
}

variable "subnet-name" {
  type        = string
  description = "Nome da subnet"
  default     = "vpc-subnet-1"
}

variable "ip_subnet" {
  type        = string
  description = "CIDR da subnet"
  default     = "10.0.0.0/8"
}

variable "subnet_region" {
  type        = string
  description = "Regiao da subnet"
  default     = "us-central1"
}