resource "aws_route53_record" "my-53" {
  zone_id = var.zone_id
  name    = var.subdomain
  type    = "A"

  alias {
    name                   = var.alias_target_name
    zone_id                = var.alias_target_zone_id
    evaluate_target_health = false
  }
}
