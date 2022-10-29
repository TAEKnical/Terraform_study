resource "aws_autoscaling_group" "web_asg" {

  depends_on = [
    aws_lb.web_alb
  ]


  desired_capacity   = 2
  max_size           = 2
  min_size           = 2
  vpc_zone_identifier = [aws_subnet.public.id, aws_subnet.public2.id]
  health_check_type         = "ELB"
  health_check_grace_period = 300

  launch_template {
    id      = aws_launch_template.web_lt.id
    version = "$Latest"
  }
}

resource "aws_autoscaling_attachment" "web_asg_att" {
  autoscaling_group_name = aws_autoscaling_group.web_asg.name
  lb_target_group_arn = aws_lb_target_group.web_tg.arn
}