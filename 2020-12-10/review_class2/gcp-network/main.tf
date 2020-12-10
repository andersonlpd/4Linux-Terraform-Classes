####### VPC1

//VPC
resource "google_compute_network" "vpc" {
  name                    = var.vpc-name
  auto_create_subnetworks = var.autocreate-subnet
}

//Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet-name
  ip_cidr_range = var.ip_subnet
  region        = var.subnet_region
  network       = google_compute_network.vpc.id
}

//Firewall
resource "google_compute_firewall" "fw-rule-1" {
  name    = var.fw-name-1
  network = google_compute_network.vpc.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = var.fw-proto-1
  }

  source_ranges = var.fw-range-1
  source_tags   = var.fw-tags-1
}