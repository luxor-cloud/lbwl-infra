resource "hcloud_server" "bungee" {
  name        = "bungee"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys = ["${var.public_key}"]
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      private_key = "${file(var.private_key)}"
    }
  }
  provisioner "local-exec" {
    // DO STUFF
  }
}

resource "hcloud_server" "hub" {
  name        = "hub"
  image       = "debian-9"
  server_type = "cx11"
  ssh_keys = ["${var.public_key}"]
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      private_key = "${file(var.private_key)}"
    }
  }
  provisioner "local-exec" {
    // DO STUFF
  }
}
