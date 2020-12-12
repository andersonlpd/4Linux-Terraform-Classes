############# Variables BE Service and HC #############

variable "be_service_name" {
  type        = string
  description = "Valor do nome do BE Service"
  default     = "lb-20201211-be"
}

variable "health_check_name" {
  type        = string
  description = "Valor do nome do Health Check Service"
  default     = "lb-20201211-hc"
}

variable "hc_request_path" {
  type        = string
  description = "Valor padrão para request path do HC"
  default     = "/"
}

variable "hc_check_interval" {
  type        = number
  description = "Valor do nome do intervalo Health Check Service"
  default     = 10
}

variable "hc_timeout" {
  type        = number
  description = "Valor do nome do timeout Health Check Service"
  default     = 5
}

############# END variables BE Service and HC #############

############# Variables URLMAP #############
variable "url_map_name" {
  type        = string
  description = "Valor do nome do URLMAP"
  default     = "lb-20201211-urlmap"
}

############# END Variables URLMAP #############

############# Variables HTTP PROXY #############
variable "http_proxy_name" {
  type        = string
  description = "Valor do nome do HTTP PROXY"
  default     = "lb-20201211-http-proxy"
}

############# END Variables HTTP PROXY #############

############# Variables FORWARDING RULE #############
variable "forwarding_rule_name" {
  type        = string
  description = "Valor do nome do Forwarding Rule"
  default     = "lb-20201211-fwd-rule"
}

variable "forwarding_rule_port" {
  type        = string
  description = "Valor da porta do Forwarding Rule"
  default     = "80"
}

############# END Variables FORWARDING RULE #############

############# Variables NETWORK #############
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

############# END Variables NETWORK #############

############# Variables Instance template #############

variable "instance_template" {
  type        = string
  description = "Nome do instance template"
  default     = "templ-20201211-1"
}

variable "type_template" {
  type        = string
  description = "Flavor utilizado na instancia"
  default     = "f1-micro"
}

variable "image_template" {
  type        = string
  description = "Imagem da instancia"
  default     = "debian-cloud/debian-9"
}

variable "template_ip_forward" {
  type        = bool
  description = "Template IP forward"
  default     = false
}

variable "template_maintenance" {
  type        = string
  description = "template maintenance"
  default     = true
}

variable "template_automatic_restart" {
  type        = bool
  description = "Automatic Restart"
  default     = true
}

variable "template_auto_delete" {
  type        = bool
  description = "Template auto delete"
  default     = true
}

variable "template_boot" {
  type        = bool
  description = "Template boot"
  default     = true
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

############# END Variables Instance template #############

############# Variables Instance Group #############

variable "instance_group" {
  type    = string
  default = "grp-20201211-1"
}

variable "group_instance_name" {
  type    = string
  default = "app"
}

variable "group_region" {
  type    = string
  default = "us-central1"
}

variable "group_dist_zones" {
  type    = list(any)
  default = ["us-central1-a", "us-central1-f"]
}

variable "group_hc_name" {
  type    = string
  default = "hc-scale-20201211-1"
}

variable "group_hc_delay" {
  type    = number
  default = 300
}

variable "group_hc_interval" {
  type    = number
  default = 20
}

variable "group_hc_timeout" {
  type    = number
  default = 2
}

variable "group_hc_healthy" {
  type    = number
  default = 2
}

variable "group_hc_unhealthy" {
  type    = number
  default = 10
}

variable "hc_request_request_path" {
  type    = string
  default = "/"
}

variable "hc_request_request_port" {
  type    = string
  default = "80"
}

variable "group_autoscaler_name" {
  type    = string
  default = "scal-20201211-1"
}

variable "group_scale_min" {
  type    = number
  default = 1
}

variable "group_scale_max" {
  type    = number
  default = 3
}

variable "group_scale_cooldown" {
  type    = number
  default = 60
}