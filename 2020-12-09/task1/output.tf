//Output VM1

output "instance-id" {
  value       = google_compute_instance.vm-20201209-1.instance_id
  description = "ID da VM criada"
}

output "instance-ip" {
  value       = google_compute_instance.vm-20201209-1.cpu_platform
  description = "CPU da VM criada"
}

output "vpc-id" {
  value       = google_compute_network.vpc-20201209-1.id
  description = "ID da VPC criada"
}

//Output VM2

output "instance-id-2" {
  value       = google_compute_instance.vm-20201209-2.instance_id
  description = "ID da VM criada"
}

output "instance-ip-2" {
  value       = google_compute_instance.vm-20201209-2.cpu_platform
  description = "CPU da VM criada"
}

output "vpc-id-2" {
  value       = google_compute_network.vpc-20201209-2.id
  description = "ID da VPC criada"
}
