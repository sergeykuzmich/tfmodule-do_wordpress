resource "digitalocean_domain" "default" {
  name       = "${var.domain}"
  ip_address = "${digitalocean_droplet.default.ipv4_address}"
}
