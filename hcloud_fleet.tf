data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "${var.public_key}"
}

resource "hcloud_server" "hub" {
  name        = "bungee"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys = ["${data.hcloud_ssh_key.ssh_key.id}"]
  connection {
    type     = "ssh"
    user     = "root"
    private_key = file("${var.private_key}")
    host     = "${self.ipv4_address}"
  }
  provisioner "file" {
    content     = templatefile("config/bungee_config.yml.template", { 
      lobby_address = "${self.ipv4_address}:25566"
      flash01_address = "${hcloud_server.flash01.ipv4_address}" 
    })
    destination = "/etc/config.yml"
  }
}

resource "hcloud_server" "flash01" {
  name        = "flash01"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
}
