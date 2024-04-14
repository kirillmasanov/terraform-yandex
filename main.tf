resource "yandex_vpc_network" "this" {
  name = "test"
}

resource "yandex_vpc_subnet" "this" {
  name           = "test-ru-central1-a"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.this.id
  v4_cidr_blocks = ["10.10.0.0/24"]
}

resource "yandex_compute_instance" "this" {
  name        = "test"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd82tb3u07rkdkfte3dn"
      size     = 10
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.this.id
  }

  metadata = {
    ssh-keys = "yc-user:${file("~/.ssh/id_rsa.pub")}"
  }
}
