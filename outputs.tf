output "price_monthly" {
  value = "${digitalocean_droplet.default.price_monthly}"
}

output "ipv4_address" {
  value = "${digitalocean_droplet.default.ipv4_address}"
}
