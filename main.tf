resource "google_compute_instance" "default" {
  name         = "neha-vm1"
  machine_type = "e2-small"
 
  zone         = "us-central1-a"
  tags = ["allow-firewall"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
}
  allow_stopping_for_update = true

}

