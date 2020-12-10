####### VPC1

//VPC
resource "google_compute_network" "vpc-20201209-1" {
  name                    = var.vpc-name
  auto_create_subnetworks = var.autocreate-subnet
}

//Subnet
resource "google_compute_subnetwork" "vpc-20201209-1-nw-us-central1" {
  name          = var.subnet-name
  ip_cidr_range = var.ip_subnet
  region        = var.subnet_region
  network       = google_compute_network.vpc-20201209-1.id
}

//Firewall
resource "google_compute_firewall" "fw-rule-1" {
  name    = var.fw-name-1
  network = google_compute_network.vpc-20201209-1.name

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

####### VPC2

//VPC
resource "google_compute_network" "vpc-20201209-2" {
  name                    = var.vpc-name-2
  auto_create_subnetworks = var.autocreate-subnet-2
}

//Subnet
resource "google_compute_subnetwork" "vpc-20201209-2-nw-us-central1" {
  name          = var.subnet-name-2
  ip_cidr_range = var.ip_subnet-2
  region        = var.subnet_region-2
  network       = google_compute_network.vpc-20201209-2.id
}

//Firewall
resource "google_compute_firewall" "fw-rule-2" {
  name    = var.fw-name-2
  network = google_compute_network.vpc-20201209-2.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = var.fw-proto-2
  }

  source_ranges = var.fw-range-2
  source_tags   = var.fw-tags-2
}


