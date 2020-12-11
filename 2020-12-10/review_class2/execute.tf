module "create-vpc" {
  source            = "./gcp-network"
  vpc-name          = "vpc-20201012-1"
  autocreate-subnet = false
  subnet-name       = "vpc-20201012-1-nw-us-central1"
  ip_subnet         = "192.168.10.0/24"
  subnet_region     = "us-central1"
  fw-name-1         = "fw-20201012-1"
}

module "create-asia" {
  source            = "./gcp-network"
  vpc-name          = "vpc-20201012-2"
  autocreate-subnet = false
  subnet-name       = "vpc-20201012-2-asia-east-1"
  ip_subnet         = "192.168.10.0/24"
  subnet_region     = "asia-east1"
  fw-name-1         = "fw-20201012-2"
}

module "instance-us" {
  source            = "./gcp-instance"
  name              = "vm-20201210-1"
  type              = "f1-micro"
  zone              = "us-central1-a"
  image             = "debian-cloud/debian-9"
  network-interface = module.create-vpc.subnet_self_link
  install_script    = "sudo apt update -y && sudo apt install nginx -y"
}

module "instance-asia" {
  source            = "./gcp-instance"
  name              = "vm-20201210-2"
  type              = "f1-micro"
  zone              = "asia-east1-a"
  image             = "debian-cloud/debian-9"
  network-interface = module.create-asia.subnet_self_link
  install_script    = "sudo apt update -y && sudo apt install nginx -y"
}