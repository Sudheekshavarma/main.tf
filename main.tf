provider "google" {
 project = var.project_id
 region  = var.region
 credentials = var.credentials_file
}
locals {
  setup_name = "terraform"
}
resource "google_compute_network" "vpc_network" {
 name                    = var.vpc_network_name
}
 
resource "google_compute_subnetwork" "my_subnet" {
 name          = var.subnetwork_name
 ip_cidr_range = var.subnetwork_ip_cidr_range
 network       = google_compute_network.vpc_network.id
 region        = "us-central1"
}
 

resource "google_compute_instance" "my_instance" {
 name         = var.compute_instance_name
 machine_type = var.compute_instance_machine_type
 zone         = var.compute_instance_zone
 tags = [local.setup_name]
 
 boot_disk {
   initialize_params {
     image = var.compute_instance_image
   }
 }
 network_interface {
   network    = google_compute_network.vpc_network.id
   subnetwork = google_compute_subnetwork.my_subnet.id
   access_config {
     
   }
 }
}