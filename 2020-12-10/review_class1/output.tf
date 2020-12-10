output "vpc-id" {
  value = google_compute_network.vpc-review-1.id
  description = "ID da VPC criada"
}

output "vpc-mtu" {
  value = google_compute_network.vpc-review-1.mtu
  description = "MTU da VPC criada"
}

output "vpc-gateway" {
  value = google_compute_network.vpc-review-1.gateway_ipv4
  description = "Gateway da VPC criada"
}

output "private-ip" {
  value = google_compute_instance.vm-review-1.network_interface[0].network_ip
  description = "Gateway da VPC criada"
}

output "public-ip" {
  value = google_compute_instance.vm-review-1.network_interface[0].access_config[0].nat_ip
  description = "Gateway da VPC criada"
}