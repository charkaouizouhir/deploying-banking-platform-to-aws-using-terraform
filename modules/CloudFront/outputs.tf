output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.my-ditribution.domain_name
}

output "cloudfront_hosted_zone_id" {
  value = aws_cloudfront_distribution.my-ditribution.hosted_zone_id
}
