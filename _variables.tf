variable "route53_domain" {
  type        = "string"
  description = "Domains to create a public hosted zone"
}

variable "acm_certificate_domains" {
  type        = "string"
  default     = ""
  description = "List of ACM certificates to create (comma separated string)"
}

variable "route53_domain_root" {
  default     = ""
  description = "Hosted zone to create in addition to per-account one"
}

variable "route53_domain_root_ns_names" {
  type        = "list"
  default     = []
  description = "List of NS domain names to create in the root zone"
}

variable "route53_domain_root_ns_records" {
  type        = "list"
  default     = []
  description = "List of lists of NS records per NS domain names defined in route53_domain_root_ns_names"
}
