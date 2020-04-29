//data "hcloud_ssh_key" "ssh_key" {
  //fingerprint = "${var.public_key}"
//}

resource "hcloud_server" "mars-k8s-etcd01" {
  name        = "mars-k8s-etcd01"
  image       = "debian-9"
  server_type = "cx11"
  //ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "etcd"
  }
}

resource "hcloud_server" "mars-k8s-master01" {
  name        = "mars-k8s-master01"
  image       = "debian-9"
  server_type = "cx11"
  //ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "master"
  }
}

resource "hcloud_server" "mars-k8s-worker01" {
  name        = "prod-k8s-worker01"
  image       = "debian-9"
  server_type = "cx11"
  //ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "worker"
    k8s_workload_type = "spigot"
  }
}

resource "hcloud_server" "mars-k8s-worker02" {
  name        = "mars-k8s-worker02"
  image       = "debian-9"
  server_type = "cx11"
  //ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
    host = "k8s"
    type = "worker"
    k8s_workload_type = "bungee"
  }
}