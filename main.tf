provider "google" {
 project = "my-project-sudheeksha"
 region  = "us-central1"
 credentials = "keys.json"
}

resource "google_compute_network" "vpc_network1" {
 name                    = "vpc-network"
}

resource "google_compute_network" "vpc_network2" {
 name                    = "dxc-network"
}
data "google_compute_network" "datasource_vpc_network2" {
  name = google_compute_network.vpc_network2.name
}

resource "google_compute_subnetwork" "vpc_subnet" {
 name          = "vpc-subnet"
 ip_cidr_range = "10.0.0.0/24"
 network       = google_compute_network.vpc_network1.id
 region        = "us-central1"
}
 

resource "google_compute_instance" "my_instance" {
 name         = "my-instance"
 machine_type = "e2-micro"
 zone         = "us-central1-a"
 
 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-11"
    }
}
 network_interface {
   subnetwork = google_compute_subnetwork.vpc_subnet.id
   access_config {}
   }
 network_interface {
   network = data.google_compute_network.datasource_vpc_network2.id
   access_config {}
     
 }
}
