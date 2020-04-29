variable "hcloud_token" {}
//variable "private_key" {}
//variable "public_key" {}

provider "hcloud" {
  token = "${var.hcloud_token}"
}
