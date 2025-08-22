variable "origin_domain_name" {
  type        = string
  description = "Origin domain name (e.g., ALB DNS name or S3 bucket)"
}

variable "acm_certificate_arn" {
  type        = string
  description = "ARN of ACM certificate for HTTPS"
}
