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
}