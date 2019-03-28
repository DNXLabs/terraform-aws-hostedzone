variable "route53_domain" {
  type        = "string"
  description = "Domains to create a public hosted zone"
}

variable "acm_certificate_domains" {
  type        = "string"
  default     = ""
  description = "List of ACM certificates to create (comma separated string)"
}
