resource "hcloud_server" "bungee" {
  name        = "bungee"
  image       = "debian-9"
  server_type = "cx11"
}

resource "hcloud_server" "lobby" {
  name        = "lobby"
  image       = "debian-9"
  server_type = "cx11"
}

data "template_file" "bungee_config" {
  template = "${file("configs/bungee_config.yml")}"
  vars = {
    flash01_address = "${hcloud_server.flash01.ipv4_address}"
    lobby_address = "${hcloud_server.lobby.ipv4_address}"
  }
}
