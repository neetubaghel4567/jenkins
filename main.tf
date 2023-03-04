resource "google_compute_instance" "default" {
  name         = "nehatestvm166"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
 project ="jenkins-server-project"
  
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
}
