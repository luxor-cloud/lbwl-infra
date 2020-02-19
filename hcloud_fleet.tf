data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "${var.public_key}"
}

resource "hcloud_server" "controlplane" {
  name        = "controlplane"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  provisioner "local-exec" {
    command = "ansible-playbook -i ${hcloud_server.kube1.ipv4_address}, playbook.yml"
  }
}

resource "hcloud_server" "worker1" {
  name        = "worker1"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  provisioner "local-exec" {
    command = "ansible-playbook -i ${hcloud_server.kube1.ipv4_address}, playbook.yml "
  }
}

resource "hcloud_server" "worker2" {
  name        = "worker2"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  provisioner "local-exec" {
    command = "ansible-playbook -i ${hcloud_server.kube1.ipv4_address}, playbook.yml"
  }
}

resource rke_cluster "cluster" {
  nodes {
    address = "${resource.hcloud_server.controlplane.ipv4_address}"
    user    = "root"
    role    = ["controlplane", "etcd"]
    ssh_key = file("${var.private_key}")
  }
  nodes {
    address = "${resource.hcloud_server.worker1.ipv4_address}"
    user    = "root"
    role    = ["worker"]
    ssh_key = file("${var.private_key}")
  }
  nodes {
    address = "${resource.hcloud_server.worker2.ipv4_address}"
    user    = "root"
    role    = ["worker"]
    ssh_key = file("${var.private_key}")
  }
}

resource "local_file" "kube_cluster_yaml" {
  filename = "${path.root}/kube_config_cluster.yml"   
  content  = rke_cluster.cluster.kube_config_yaml
}
