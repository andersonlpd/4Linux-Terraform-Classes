terraform {
  backend "gcs" {
    bucket = "terraform-tfsate-4linux"
    prefix = "tfstate"
  }
}