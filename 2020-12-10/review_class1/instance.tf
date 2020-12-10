resource "google_compute_instance" "vm-review-1" {
    name = var.name
    machine_type = var.type
    zone = var.zone

    boot_disk {
        initialize_params {
            image = var.image
        }
    }

    network_interface {
        subnetwork = google_compute_subnetwork.nw-review-1.name
            access_config {
        }
    }
}

resource "google_compute_instance" "vm-review-2" {
    depends_on=[google_compute_instance.vm-review-1]
    name = var.name-2
    machine_type = var.type
    zone = var.zone

    boot_disk {
        initialize_params {
            image = var.image
        }
    }

    network_interface {
        subnetwork = google_compute_subnetwork.nw-review-1.name
            access_config {
        }
    }
}