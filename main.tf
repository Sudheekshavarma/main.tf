provider "google" {
 project = "my-project-sudheeksha"  
 region  = "us-central1" 
 credentials = "keys.json"
}
resource "google_compute_network" "vpc_network" {
 name                    = "vpc-network"
 auto_create_subnetworks = false
}
 
resource "google_compute_subnetwork" "my_subnet" {
 name          = "my-subnet"
 ip_cidr_range = "10.10.10.0/24" 
 network       = google_compute_network.vpc_network.id
 region        = "us-central1"
}
 

resource "google_compute_instance" "my_instance" {
 name         = "my-instance"
 machine_type = "e2-medium"
 zone         = "us-central1-a"
 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-11" 
   }
 }
 network_interface {
   network    = google_compute_network.vpc_network.id
   subnetwork = google_compute_subnetwork.my_subnet.id
   access_config {
     
   }
 }
}