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

variable "network-interface" {
    type        = string
    description = "Subnet da instancia"
    default     = "default"
}

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