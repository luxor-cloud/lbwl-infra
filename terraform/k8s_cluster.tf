data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "${var.public_key}"
}

resource "hcloud_server" "lbwl-prod-master01" {
  name        = "lbwl-prod-master01"
  image       = "debian-10"
  server_type = "cx11"
  datacenter  = "fsn1-dc15"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env  = "prod"
    host = "k8s"
    type = "master"
  }
}

resource "hcloud_server" "lbwl-prod-worker01" {
  name        = "lbwl-prod-worker01"
  image       = "debian-10"
  server_type = "cx11"
  datacenter  = "fsn1-dc15"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env  = "prod"
    host = "k8s"
    type = "worker"
  }
}

resource "hcloud_server" "lbwl-prod-worker02" {
  name        = "lbwl-prod-worker02"
  image       = "debian-10"
  server_type = "cx11"
  datacenter  = "fsn1-dc15"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env  = "prod"
    host = "k8s"
    type = "worker"
  }
}
