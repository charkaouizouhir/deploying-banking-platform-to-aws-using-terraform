resource "aws_launch_template" "launch_template" {
  name_prefix   = "${var.name}-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = var.security_groups

  user_data = var.user_data

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "asg" {
  name                      = "app-host-asg"
  max_size                  = var.max_size
  min_size                  = var.min_size
  desired_capacity          = var.desired_capacity
  launch_template {
    id      = aws_launch_template.launch_template.id
    version = "$Latest"
  }
  vpc_zone_identifier        = var.subnets
  health_check_type          = "EC2"
  health_check_grace_period  = 300
  force_delete               = true
  tag {
    key                 = "Name"
    value               = var.name
    propagate_at_launch = true
  }

  target_group_arns = var.target_group_arns
}
