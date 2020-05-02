data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "${var.public_key}"
}

resource "hcloud_server" "mars-etcd01" {
  name        = "mars-etcd01"
  image       = "debian-9"
  server_type = "cx11"
  datacenter = "nbg1-dc3"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "etcd"
  }
}

resource "hcloud_server" "mars-master01" {
  name        = "mars-master01"
  image       = "debian-9"
  server_type = "cx11"
  datacenter = "nbg1-dc3"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "master"
  }
}

resource "hcloud_server" "mars-worker01" {
  name        = "mars-worker01"
  image       = "debian-9"
  server_type = "cx11"
  datacenter = "nbg1-dc3"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "worker"
    k8s_workload_type = "spigot"
  }
}

resource "hcloud_server" "mars-worker02" {
  name        = "mars-worker02"
  image       = "debian-9"
  server_type = "cx11"
  datacenter = "nbg1-dc3"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "worker"
    k8s_workload_type = "bungee"
  }
}