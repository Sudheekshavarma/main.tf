provider "google" {
 project = var.project
 region  = var.region
 credentials = var.credentials
}
resource "google_compute_instance" "gcp_instance" {
  count        = var.instance_count
  name         = "dxchyd-${count.index}"
  machine_type = var.machine_type
  zone         = var.zone
 
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
 
  network_interface {
    network = var.network
    access_config {}    
  }
 
 
}