provider "google" {
  credentials = var.credsvar
  project = "web-project-dev"
  region = "us-west1"
}

resource "google_compute_instance" "vm_instance" {
  name = "testinstance"
  machine_type = "n1-standard-1"
  
  boot_disk {
	initialze_params {
		image = "centos/centos-7"
	}
}
