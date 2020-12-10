resource "google_compute_instance" "vm-20201209-1" {
  name         = var.name
  machine_type = var.type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.vpc-20201209-1-nw-us-central1.name
    access_config {
    }
  }

  metadata = {
    ssh-keys = var.pub-ssh-key
  }

  metadata_startup_script = var.install_script
}

resource "google_compute_instance" "vm-20201209-2" {
  name         = var.name-2
  machine_type = var.type-2
  zone         = var.zone-2

  boot_disk {
    initialize_params {
      image = var.image-2
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.vpc-20201209-2-nw-us-central1.name
    access_config {
    }
  }

  metadata = {
    ssh-keys = var.pub-ssh-key
  }

  metadata_startup_script = var.install_script
}