data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "${var.public_key}"
}

resource "hcloud_server" "controlplane" {
  name        = "controlplane"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
}

resource "hcloud_server" "etcd" {
  name        = "etcd"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
}

resource "hcloud_server" "worker" {
  name        = "worker"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
}
