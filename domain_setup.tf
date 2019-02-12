data "template_file" "domain_setup" {
  template = "${file("${path.module}/domain_setup.tpl")}"

  vars = {
    domain = "${var.domain}"
  }
}
