resource "hcloud_server" "flash01" {
  name        = "flash01"
  image       = "debian-9"
  server_type = "cx11"
}