data "template_file" "user_data" {
  template = "${file("${path.module}/user_data.tpl")}"

  vars = {
    domain = "${var.domain}"
  }
}
