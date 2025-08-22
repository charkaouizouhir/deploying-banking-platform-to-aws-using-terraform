variable "zone_id" {
  type        = string
  description = "Route53 hosted zone ID"
}

variable "subdomain" {
  type        = string
  description = "Subdomain to create (e.g., app.mydomain.com)"
}

variable "alias_target_name" {
  type        = string
  description = "CloudFront domain name or ALB DNS name"
}

variable "alias_target_zone_id" {
  type        = string
  description = "CloudFront hosted zone ID or ALB hosted zone ID"
}
