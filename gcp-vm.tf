resource "google_compute_instance" "default" {
    name = "private-server"
    machine_type = "f1-micro"
    zone = "us-central1-a"

    tags = ["private-server"]

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = "default"

    }
}