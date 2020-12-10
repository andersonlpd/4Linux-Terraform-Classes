variable "name" {
    type = string
    description = "nome da instancia"
    default = "vm-review-1"
}

variable "type" {
    type = string
    description = "Flavor utilizado na instancia"
    default = "f1-micro"
}

variable "zone" {
    type = string
    description = "Zona da instancia"
    default = "us-central1-a"
}

variable "image" {
    type = string
    description = "Imagem da instancia"
    default = "debian-cloud/debian-9"
}

variable "vpc-name" {
    type = string
    description = "Nome da VPC"
    default = "vpc-review-1"
}

variable "autocreate-subnet" {
    type = bool
    description = "Criacao automatica da subnet S/N"
    default = false
}

variable "subnet-name" {
    type = string
    description = "Nome da subnet"
    default = "nw-review-1"
}

variable "ip_subnet" {
    type = string
    description = "CIDR da subnet"
    default = "192.168.10.0/24"
}

variable "subnet_region" {
    type = string
    description = "Regiao da subnet"
    default = "us-central1"
}

variable "name-2" {
    type = string
    description = "nome da instancia"
    default = "vm-review-2"
}