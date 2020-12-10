module "create-vpc" {
  source            = "./gcp-network"
  vpc-name          = "vpc-20200912-1"
  autocreate-subnet = false
  subnet-name       = "vpc-20201209-1-nw-us-central1"
  ip_subnet         = "192.168.10.0/24"
  subnet_region     = "us-central1"
}

module "create-instance" {
  source            = "./gcp-instance"
  name              = "vm-20200912-1"
  type              = "f1-micro"
  zone              = "us-central1-a"
  image             = "debian-cloud/debian-9"
  network-interface = module.create-vpc.subnet_self_link
}

module "create-instance-2" {
  source            = "./gcp-instance"
  name              = "vm-20200912-2"
  type              = "f1-micro"
  zone              = "us-central1-b"
  image             = "debian-cloud/debian-9"
  network-interface = module.create-vpc.subnet_self_link
}