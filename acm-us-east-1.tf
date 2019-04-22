resource "aws_acm_certificate" "cert_us" {
  provider = "aws.us-east-1"

  domain_name               = "${element(split(",", var.acm_certificate_domains), 0)}"
  subject_alternative_names = ["${slice(split(",", var.acm_certificate_domains), 1, length(split(",", var.acm_certificate_domains)))}"]
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

# resource "aws_route53_record" "cert_validation_us" {
#   provider = "aws.us-east-1"


#   # count          = "${length(split(",", var.acm_certificate_domains))}"
#   count = 1 # terraform will fail when validation records are identical, so only validating the first one is the option for now


#   zone_id = "${aws_route53_zone.public.id}"
#   name    = "${lookup(aws_acm_certificate.cert_us.domain_validation_options[count.index], "resource_record_name")}"
#   type    = "${lookup(aws_acm_certificate.cert_us.domain_validation_options[count.index], "resource_record_type")}"
#   records = ["${lookup(aws_acm_certificate.cert_us.domain_validation_options[count.index], "resource_record_value")}"]
#   ttl     = 60
# }

