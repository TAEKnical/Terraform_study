resource "aws_security_group" "web_ec2_sg" {
  depends_on = [
    aws_security_group.web_alb_sg
  ]

  vpc_id = aws_vpc.vpc_isnt_test.id
  name = "web_ec2_sg"

  ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    security_groups = [aws_security_group.web_alb_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = format(
        "%s-%s-web_ec2_sg",
        var.nickname,
        var.environment
    )
  }
}

resource "aws_security_group" "web_alb_sg" {
  vpc_id = aws_vpc.vpc_isnt_test.id
  name = "web_alb_sg"

  ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = format(
        "%s-%s-web_alb_sg",
        var.nickname,
        var.environment
    )
  }
}