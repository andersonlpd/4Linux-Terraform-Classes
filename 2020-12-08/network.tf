resource "google_compute_network" "vpc-terraform" {
    name                    = var.vpc-name
    auto_create_subnetworks = var.autocreate-subnet
}

resource "google_compute_subnetwork" "nw-us-central1" {
    name          = var.subnet-name
    ip_cidr_range = var.ip_subnet
    region        = var.subnet_region
    network       = google_compute_network.vpc-terraform.id
}