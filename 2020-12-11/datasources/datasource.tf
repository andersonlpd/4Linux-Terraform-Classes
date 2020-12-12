// Using "data", we can get the data for any resource in the cloud, even if it's not related to the infrastructure being created in terraform
data "google_compute_network" "vpc" {
  name = "vpc-terraform"
}

resource "google_compute_instance" "vm-20201209-1" {
  //count        = length(var.lista) Here, we are using a standard count. With count, if we change the order of the variable "lista", terraform will understand that the VMs changed their IDs, and will recreate all the infrastructure from scratch
  for_each        = toset(var.lista) // Here, we use for_each, which it's better to use, as it'll create dictionary of data attributing each value a single key
  name         = format("vm-%s", each.value) //Then we can use each value of the for_each in the interpolation of the variable name
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = data.google_compute_network.vpc.self_link //We can reference the data_source referenced in the beggining of the code using data.resource_type.name_datasource.desired_reference
    access_config {
    }
  }
}
