#to get the Fully Qualified Domain Name of my route-53
output "fqdn" {
  value = aws_route53_record.my-53.fqdn
}
