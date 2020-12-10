module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 2.6"

    project_id   = "terraform4linux-298021"
    network_name = "vpc-20201209-1"
    #routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "192.168.10.0/24"
            subnet_region         = "us-west1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "192.168.20.0/24"
            subnet_region         = "us-west1"
        }
    ]

}