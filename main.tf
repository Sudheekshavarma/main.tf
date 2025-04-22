provider "google" {
 project = "my-project-sudheeksha"
 region  = "us-central1"
 credentials = "keys.json"
}
resource "google_compute_instance" "my_instance" {
  count        = 4
  name         = "terraform-${count.index}"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
 
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
 
  network_interface {
    network = "default"
    access_config {}    
  }
 
 
}