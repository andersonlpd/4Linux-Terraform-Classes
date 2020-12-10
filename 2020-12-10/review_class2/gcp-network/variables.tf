variable "vpc-name" {
  type        = string
  description = "Nome da VPC"
  default     = "vpc-20201210-1"
}

variable "autocreate-subnet" {
  type        = bool
  description = "Criacao automatica da subnet S/N"
  default     = false
}

variable "subnet-name" {
  type        = string
  description = "Nome da subnet"
  default     = "vpc-20201210-1-nw-us-central1"
}

variable "ip_subnet" {
  type        = string
  description = "CIDR da subnet"
  default     = "192.168.10.0/24"
}

variable "subnet_region" {
  type        = string
  description = "Regiao da subnet"
  default     = "us-central1"
}

variable "fw-name-1" {
  type        = string
  description = "Regiao do firewall 1"
  default     = "fw-rule-1"
}

variable "fw-proto-1" {
  type        = list(any)
  description = "Protocolos do firewall 1"
  default     = ["80", "443", "22"]
}

variable "fw-range-1" {
  type        = list(any)
  description = "Range do firewall 1"
  default     = ["0.0.0.0/0"]
}

variable "fw-tags-1" {
  type        = list(any)
  description = "Tags do firewall 1"
  default     = ["web"]
}