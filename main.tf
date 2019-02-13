resource "digitalocean_domain" "default" {
  name       = "${var.domain}"
  ip_address = "${digitalocean_droplet.default.ipv4_address}"
}


resource "digitalocean_droplet" "default" {
  name   = "${coalesce(var.droplet_name, var.domain)}"
  image  = "wordpress-18-04"
  region = "${var.droplet_region}"
  size   = "${var.droplet_size}"

  user_data = "${data.template_file.user_data.rendered}"
}
