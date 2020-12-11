resource "google_compute_instance" "instance-vm" {
  count = terraform.workspace == "prd" ? 3 : 1
  name         = format("%s-%s-%d",terraform.workspace, var.name, count.index+1)
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
    ssh-keys = "adorigao:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC1rhPviDJfa79NvrFAH4CWu9+sC0dNqCKoqRge49jer+pJ4Q/q11XKTnmvpRhkT1keMxAc1XHGSXEdkdBo0YyhfRgvViCUtQlYUlEhK82L82lVRJZBrB+ElUSUEfIjzQof1tr1nkJ7PHIzuornQX0yYb1a858EuE2aCaLTuTzGIZIOogZyzRBpppX4L80Gi3zGwelsqXQcN9w4vm45kGIVjzYQT7SKgEwLlGzLBHqRmpR4WTQxLjpk6wPmgmc8ceVWwts2dOAqPpyiNqPZBWYuedwilyrIGEf7LN5PjCm0DAlSeDy6oaC90kba2XxMBI0EnV3N3KrCseDw6KFdQ8ohfiTrku7druqYTy7uuCpcU9+Dag8eKLjPIRcOgaxBt0vdjGHPA6vrqJzcc8iKicI9YSkamhmtMJ2T7Jx4cUOTggALJqwys61FoX/e2FaoWYK/jKRA+cHlPjdwH4QJZJRXgYLS86aUbHRjNERWepukonWOJFepiLCR8P3am4iM7b0= dorigas@DESKTOP-728A78B"
  }

  metadata_startup_script = "sudo apt update -y && sudo apt install nginx -y"
}