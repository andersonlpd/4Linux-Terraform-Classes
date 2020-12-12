resource "google_compute_instance_template" "instance-template" {
  name        = var.instance_template
  description = "Template for group instance"

  tags = ["template"]

  machine_type   = var.type_template
  can_ip_forward = var.template_ip_forward

  scheduling {
    automatic_restart   = var.template_automatic_restart
    on_host_maintenance = var.template_maintenance
  }

  // Create a new boot disk from an image
  disk {
    source_image = var.image_template
    auto_delete  = var.template_auto_delete
    boot         = true
  }

  network_interface {
    network    = google_compute_network.vpc.id
    subnetwork = google_compute_subnetwork.subnet.id

    access_config {
      //Ephemeral IP
    }
  }

  metadata = {
    ssh-keys = var.pub-ssh-key
  }

  metadata_startup_script = var.install_script

}