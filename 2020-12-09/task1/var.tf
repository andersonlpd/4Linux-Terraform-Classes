// Variáveis VM1
variable "name" {
  type        = string
  description = "nome da instancia"
  default     = "vm-20201209-1"
}

variable "type" {
  type        = string
  description = "Flavor utilizado na instancia"
  default     = "f1-micro"
}

variable "zone" {
  type        = string
  description = "Zona da instancia"
  default     = "us-central1-a"
}

variable "image" {
  type        = string
  description = "Imagem da instancia"
  default     = "debian-cloud/debian-9"
}

variable "vpc-name" {
  type        = string
  description = "Nome da VPC"
  default     = "vpc-20201209-1"
}

variable "autocreate-subnet" {
  type        = bool
  description = "Criacao automatica da subnet S/N"
  default     = false
}

variable "subnet-name" {
  type        = string
  description = "Nome da subnet"
  default     = "vpc-20201209-1-nw-us-central1"
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

//Variáveis VM2

variable "name-2" {
  type        = string
  description = "nome da instancia"
  default     = "vm-20201209-2"
}

variable "type-2" {
  type        = string
  description = "Flavor utilizado na instancia"
  default     = "f1-micro"
}

variable "zone-2" {
  type        = string
  description = "Zona da instancia"
  default     = "us-central1-a"
}

variable "image-2" {
  type        = string
  description = "Imagem da instancia"
  default     = "debian-cloud/debian-9"
}

variable "vpc-name-2" {
  type        = string
  description = "Nome da VPC"
  default     = "vpc-20201209-2"
}

variable "autocreate-subnet-2" {
  type        = bool
  description = "Criacao automatica da subnet S/N"
  default     = false
}

variable "subnet-name-2" {
  type        = string
  description = "Nome da subnet"
  default     = "vpc-20201209-2-nw-us-central1"
}

variable "ip_subnet-2" {
  type        = string
  description = "CIDR da subnet"
  default     = "192.168.20.0/24"
}

variable "subnet_region-2" {
  type        = string
  description = "Regiao da subnet"
  default     = "us-central1"
}

variable "fw-name-2" {
  type        = string
  description = "Regiao do firewall 2"
  default     = "fw-rule-2"
}

variable "fw-proto-2" {
  type        = list(any)
  description = "Protocolos do firewall 2"
  default     = ["80", "443", "22"]
}

variable "fw-range-2" {
  type        = list(any)
  description = "Range do firewall 2"
  default     = ["0.0.0.0/0"]
}

variable "fw-tags-2" {
  type        = list(any)
  description = "Tags do firewall 2"
  default     = ["web"]
}


###### Chave SSH

variable "pub-ssh-key" {
  type        = string
  description = "Chave SSH pública"
  default     = "adorigao:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1rhPviDJfa79NvrFAH4CWu9+sC0dNqCKoqRge49jer+pJ4Q/q11XKTnmvpRhkT1keMxAc1XHGSXEdkdBo0YyhfRgvViCUtQlYUlEhK82L82lVRJZBrB+ElUSUEfIjzQof1tr1nkJ7PHIzuornQX0yYb1a858EuE2aCaLTuTzGIZIOogZyzRBpppX4L80Gi3zGwelsqXQcN9w4vm45kGIVjzYQT7SKgEwLlGzLBHqRmpR4WTQxLjpk6wPmgmc8ceVWwts2dOAqPpyiNqPZBWYuedwilyrIGEf7LN5PjCm0DAlSeDy6oaC90kba2XxMBI0EnV3N3KrCseDw6KFdQ8ohfiTrku7druqYTy7uuCpcU9+Dag8eKLjPIRcOgaxBt0vdjGHPA6vrqJzcc8iKicI9YSkamhmtMJ2T7Jx4cUOTggALJqwys61FoX/e2FaoWYK/jKRA+cHlPjdwH4QJZJRXgYLS86aUbHRjNERWepukonWOJFepiLCR8P3am4iM7b0= dorigas@DESKTOP-728A78B"
}

variable "install_script" {
  type        = string
  description = "Script de Instalacao do NGINX"
  default     = "sudo apt update -y && sudo apt install nginx -y"
}