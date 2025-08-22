output "target_group_arn" {
    value = aws_lb_target_group.target-grp.arn
  }

  output "DNS" {
    value= aws_lb.lb.dns_name
    
  }