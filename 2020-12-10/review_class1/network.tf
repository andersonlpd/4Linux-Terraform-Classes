resource "google_compute_network" "vpc-review-1" {
    name                    = var.vpc-name
    auto_create_subnetworks = var.autocreate-subnet
}

resource "google_compute_subnetwork" "nw-review-1" {
    name          = var.subnet-name
    ip_cidr_range = var.ip_subnet
    region        = var.subnet_region
    network       = google_compute_network.vpc-review-1.id
}