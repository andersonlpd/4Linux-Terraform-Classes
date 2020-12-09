resource "google_compute_instance" "tf-chapter5" {
    depends_on=[google_compute_network.vpc-terraform]
    name = var.name
    machine_type = var.type
    zone = var.zone

    boot_disk {
        initialize_params {
            image = var.image
        }
    }

    network_interface {
        subnetwork = google_compute_subnetwork.nw-us-central1.name
            access_config {
        }
    }
}