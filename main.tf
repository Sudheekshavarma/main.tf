provider "google" {
 project = "my-project-sudheeksha"
 region  = "us-central1"
 credentials = "keys.json"
}
data "google_compute_network" "default_network" {
  name = "default"
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
   network = data.google_compute_network.default_network.id
   access_config {}
   }

}
