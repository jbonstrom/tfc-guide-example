provider "google" {
  project = "web-project-dev"
  region = "us-west1"
}

resource "google_compute_instance" "vm_instance" {
  name = "testinstance"
  machine_type = "n1-standard"
  
  boot_disk {
	initialize_params {
		image = "centos/centos-7"
		}
	}
	
  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}