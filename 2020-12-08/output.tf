output "vpc-id" {
  value = google_compute_network.vpc-terraform.id
  description = "ID da VPC criada"
}

output "vpc-mtu" {
  value = google_compute_network.vpc-terraform.mtu
  description = "MTU da VPC criada"
}

output "vpc-gateway" {
  value = google_compute_network.vpc-terraform.gateway_ipv4
  description = "Gateway da VPC criada"
}