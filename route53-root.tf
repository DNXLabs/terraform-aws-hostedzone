resource "aws_route53_record" "ns_externals" {
  count   = "${length(var.route53_domain_root_ns_names)}"
  zone_id = "${aws_route53_zone.root.zone_id}"
  name    = "${var.route53_domain_root_ns_names[count.index]}"
  type    = "NS"
  ttl     = "3600"
  records = ["${var.route53_domain_root_ns_records[count.index]}"]
}

resource "aws_route53_record" "ns_local" {
  count   = "${var.route53_domain_root != "" ? 1 : 0}"
  zone_id = "${aws_route53_zone.root.zone_id}"
  name    = "${aws_route53_zone.public.name}"
  type    = "NS"
  ttl     = "3600"
  records = ["${aws_route53_zone.public.name_servers}"]
}

resource "aws_route53_zone" "root" {
  count = "${var.route53_domain_root != "" ? 1 : 0}"
  name  = "${var.route53_domain_root}"
}
